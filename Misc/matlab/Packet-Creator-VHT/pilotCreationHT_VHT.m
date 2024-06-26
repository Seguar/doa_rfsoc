function P_n = pilotCreationHT_VHT(n, BW_channel)
switch BW_channel
    case 20
        Pilots_20 = [1 1 1 -1];
        P_n = zeros(1,57);
        P_n([-21 -7 7 21]+29) = [Pilots_20(mod(n,4)+1)   Pilots_20(mod(n+1,4)+1) ....
                                 Pilots_20(mod(n+2,4)+1) Pilots_20(mod(n+3,4)+1)];
    case 40
        Pilots_40 = [1 1 1 -1 -1 1];
        P_n = zeros(1,117);
        P_n([-53 -25 -11 11 25 53]+59) = [Pilots_40(mod(n,6)+1)   Pilots_40(mod(n+1,6)+1)...
                                          Pilots_40(mod(n+2,6)+1) Pilots_40(mod(n+3,6)+1) ...
                                          Pilots_40(mod(n+4,6)+1) Pilots_40(mod(n+5,6)+1)];
              
    case 80
        Pilots_80 = [1 1 1 -1 -1 1 1 1];
        P_n = zeros(1,245);
        P_n([-103 -75 -39 -11 11 39 75 103]+123) = [Pilots_80(mod(n,8)+1)   Pilots_80(mod(n+1,8)+1)...
                                                    Pilots_80(mod(n+2,8)+1) Pilots_80(mod(n+3,8)+1) ...
                                                    Pilots_80(mod(n+4,8)+1) Pilots_80(mod(n+5,8)+1) ...
                                                    Pilots_80(mod(n+6,8)+1) Pilots_80(mod(n+7,8)+1)];
    case 160
        Pilots_80 = [1 1 1 -1 -1 1 1 1];
        P_n = zeros(1,501);
        P_n([-231 -203 -167 -139 -117 -89 -53 -25 25 53 89 117 139 167 203 231]+251) = ...
                                                   [Pilots_80(mod(n,8)+1)   Pilots_80(mod(n+1,8)+1)...
                                                    Pilots_80(mod(n+2,8)+1) Pilots_80(mod(n+3,8)+1) ...
                                                    Pilots_80(mod(n+4,8)+1) Pilots_80(mod(n+5,8)+1) ...
                                                    Pilots_80(mod(n+6,8)+1) Pilots_80(mod(n+7,8)+1) ...
                                                    Pilots_80(mod(n,8)+1)   Pilots_80(mod(n+1,8)+1)...
                                                    Pilots_80(mod(n+2,8)+1) Pilots_80(mod(n+3,8)+1) ...
                                                    Pilots_80(mod(n+4,8)+1) Pilots_80(mod(n+5,8)+1) ...
                                                    Pilots_80(mod(n+6,8)+1) Pilots_80(mod(n+7,8)+1)];
end;
end