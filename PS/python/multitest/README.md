# Recovered MultiTest experiments

See [the deployment audit](../../../runtime/rfsoc4x2/README.md) before using
these notebooks. `main.ipynb` has recent saved execution evidence, while the
newer `Untitled.ipynb` had none. Neither is proven to be the last-used notebook.

Keep this directory's wrapper and bit/HWH pair together. Set `RFSOC_BIND_IP`
in the notebook environment for the intended board interface. `main` and
`Untitled` reference `/boot/data.mat`; the matching file is already tracked in
the sibling `boot` directory. `sub` performs analysis against shared hardware;
its `download=False` argument does not make all initialization side-effect-free.

The notebooks preserve unfinished experiments, including alternative server
starts, placeholder control handling and scratch cells. Select and review cells;
do not use Run All or replace the live boot service based solely on recency.
