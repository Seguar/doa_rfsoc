function modSymbol = subModMap( symBitStream )
switch length(symBitStream)
    case 48 %BPSK
        K_mod = 1;
        I = symBitStream-(symBitStream == 0);
        Q = zeros(1,length(I));
    case 48*2 %QPSK
        K_mod = 1/power(2,0.5);
        b0_b1_matrix = reshape(symBitStream,2,[]);
        I = b0_b1_matrix(1,:)-(b0_b1_matrix(1,:)== 0);
        Q = b0_b1_matrix(2,:)-(b0_b1_matrix(2,:)== 0);
    case 48*4 %16 - QAM
        K_mod = 1/power(10,0.5);
        b0_b1_b2_b3_matrix = reshape(symBitStream,4,[]);
        I = ones(1, 48);
        Q = ones(1, 48);
        I ((b0_b1_b2_b3_matrix(1,:)+b0_b1_b2_b3_matrix(2,:)) == 0) = -3;
        I ((b0_b1_b2_b3_matrix(1,:)-b0_b1_b2_b3_matrix(2,:)) == 1) = 3;
        I ((b0_b1_b2_b3_matrix(1,:)-b0_b1_b2_b3_matrix(2,:)) == -1) = -1;
        Q ((b0_b1_b2_b3_matrix(3,:)+b0_b1_b2_b3_matrix(4,:)) == 0) = -3;
        Q ((b0_b1_b2_b3_matrix(3,:)-b0_b1_b2_b3_matrix(4,:)) == 1) = 3;
        Q ((b0_b1_b2_b3_matrix(3,:)-b0_b1_b2_b3_matrix(4,:)) == -1) = -1;
    case 48*6 %64 - QAM
        K_mod = 1/power(42,0.5);
        b0_to_b5_matrix = reshape(symBitStream,6,[]);
        I = ones(1, 48);
        Q = ones(1, 48);
        I ((b0_to_b5_matrix(1,:) == 0) + (b0_to_b5_matrix(2,:) == 0) + (b0_to_b5_matrix(3,:)==0) == 3) = -7;
        I ((b0_to_b5_matrix(1,:) == 0) + (b0_to_b5_matrix(2,:) == 0) + (b0_to_b5_matrix(3,:) == 1) == 3) = -5;
        I ((b0_to_b5_matrix(1,:) == 0) + (b0_to_b5_matrix(2,:) == 1) + (b0_to_b5_matrix(3,:) == 1) == 3) = -3;
        I ((b0_to_b5_matrix(1,:) == 0) + (b0_to_b5_matrix(2,:) == 1) + (b0_to_b5_matrix(3,:) == 0) == 3) = -1;
        I ((b0_to_b5_matrix(1,:) == 1) + (b0_to_b5_matrix(2,:) == 1) + (b0_to_b5_matrix(3,:) == 1) == 3) = 3;
        I ((b0_to_b5_matrix(1,:) == 1) + (b0_to_b5_matrix(2,:) == 0) + (b0_to_b5_matrix(3,:) == 1) == 3) = 5;
        I ((b0_to_b5_matrix(1,:) == 1) + (b0_to_b5_matrix(2,:) == 0) + (b0_to_b5_matrix(3,:) == 0) == 3) = 7;
        Q ((b0_to_b5_matrix(4,:) == 0) + (b0_to_b5_matrix(5,:) == 0) + (b0_to_b5_matrix(6,:)==0) == 3) = -7;
        Q ((b0_to_b5_matrix(4,:) == 0) + (b0_to_b5_matrix(5,:) == 0) + (b0_to_b5_matrix(6,:) == 1) == 3) = -5;
        Q ((b0_to_b5_matrix(4,:) == 0) + (b0_to_b5_matrix(5,:) == 1) + (b0_to_b5_matrix(6,:) == 1) == 3) = -3;
        Q ((b0_to_b5_matrix(4,:) == 0) + (b0_to_b5_matrix(5,:) == 1) + (b0_to_b5_matrix(6,:) == 0) == 3) = -1;
        Q ((b0_to_b5_matrix(4,:) == 1) + (b0_to_b5_matrix(5,:) == 1) + (b0_to_b5_matrix(6,:) == 1) == 3) = 3;
        Q ((b0_to_b5_matrix(4,:) == 1) + (b0_to_b5_matrix(5,:) == 0) + (b0_to_b5_matrix(6,:) == 1) == 3) = 5;
        Q ((b0_to_b5_matrix(4,:) == 1) + (b0_to_b5_matrix(5,:) == 0) + (b0_to_b5_matrix(6,:) == 0) == 3) = 7;     
end

modSymbol = (I + 1i.*Q).*K_mod;

end