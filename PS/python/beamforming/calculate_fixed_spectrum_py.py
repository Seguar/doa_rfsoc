import numpy as np


def calculate_fixed_spectrum_py(
    sig_final,
    scan_axis,
    num_elements,
    steering_correction,
    pow_claibration_intrp,
    diagonal_loading=1e-8,
):
    """Calculate fixed MVDR-like spectrum for a complex array snapshot matrix.

    Parameters
    ----------
    sig_final : ndarray, shape (N, M)
        Complex input samples. N is snapshots, M is array elements.
    scan_axis : ndarray, shape (L,)
        Scan angles in degrees.
    num_elements : int
        Number of array elements. Must match M.
    steering_correction : ndarray, shape (L, M)
        Complex steering correction per scan angle and element.
    pow_claibration_intrp : ndarray, shape (L, M)
        Power calibration per scan angle and element.
    diagonal_loading : float, optional
        Relative diagonal loading for numerical stability. Set to 0 to disable.

    Returns
    -------
    yspec_fixed : ndarray, shape (L, 1)
        Spectrum in dB.
    """
    sig_final = np.asarray(sig_final, dtype=np.complex64)
    scan_axis = np.asarray(scan_axis, dtype=np.float64).reshape(-1)
    steering_correction = np.asarray(steering_correction, dtype=np.complex64)
    pow_claibration_intrp = np.asarray(pow_claibration_intrp, dtype=np.complex64)

    if sig_final.ndim != 2:
        raise ValueError(f"sig_final must be 2-D [snapshots, elements], got shape {sig_final.shape}")

    n_snapshots, n_elements = sig_final.shape
    if n_elements != int(num_elements):
        raise ValueError(
            f"num_elements={num_elements} but sig_final has {n_elements} columns"
        )

    l_scan = scan_axis.size
    expected_shape = (l_scan, n_elements)
    if steering_correction.shape != expected_shape:
        raise ValueError(
            f"steering_correction must have shape {expected_shape}, got {steering_correction.shape}"
        )
    if pow_claibration_intrp.shape != expected_shape:
        raise ValueError(
            f"pow_claibration_intrp must have shape {expected_shape}, got {pow_claibration_intrp.shape}"
        )

    if n_snapshots == 0:
        raise ValueError("sig_final has zero snapshots")

    # Steering matrix A has shape [M, L].
    elements_vec = np.arange(n_elements, dtype=np.float64)[:, np.newaxis]
    scan_angles_rad = np.deg2rad(scan_axis)
    a_all = np.exp(-1j * np.pi * elements_vec * np.sin(scan_angles_rad)).astype(np.complex64)

    # Apply angle/element calibrations to the steering vectors.
    a_fixed = a_all * steering_correction.T * pow_claibration_intrp.T

    # Covariance matrix. Normalization does not change MVDR peak location, but improves scaling.
    rx = (sig_final.T.conj() @ sig_final) / max(n_snapshots, 1)

    if diagonal_loading:
        load = diagonal_loading * (np.trace(rx).real / max(n_elements, 1))
        if np.isfinite(load) and load > 0:
            rx = rx + load * np.eye(n_elements, dtype=rx.dtype)

    # Avoid explicit inverse: solve Rx * x = A for all scan vectors at once.
    try:
        rx_inv_a = np.linalg.solve(rx, a_fixed)
    except np.linalg.LinAlgError:
        rx_inv_a = np.linalg.pinv(rx) @ a_fixed

    denom = np.sum(a_fixed.conj() * rx_inv_a, axis=0)
    spectrum = np.abs(1.0 / denom)
    spectrum = np.maximum(spectrum, np.finfo(np.float32).tiny)

    yspec_fixed = 10 * np.log10(spectrum)
    return yspec_fixed.reshape(-1, 1)
