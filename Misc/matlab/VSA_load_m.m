function [] =  VSA_load_m(data,fsRfsoc,pcvsa,name,bw)
    if (pcvsa.status == "open")
        fprintf(pcvsa, sprintf(':DISPlay:ANNotation:TITLe:DATA "%s"', name));
        % Data to VSA
        VSA_Play_File_name = 'data';
        savevsarecording_m(VSA_Play_File_name, data, fsRfsoc, 0e6, bw)
        %     fprintf(pcvsa, ':INITiate:PAUSe');
        %     fprintf(pcvsa, sprintf(':SENSe:FREQuency:CENTer %g', 00000000.0));
        %     fprintf(pcvsa, sprintf(':SENSe:FREQuency:SPAN %g', 25000000.0));
        fprintf(pcvsa, sprintf(':MMEMory:LOAD:RECording "%s","%s"', [pwd '\' VSA_Play_File_name '.mat'], 'MAT'));
%         fprintf(pcvsa, sprintf(':INPut:DATA:FEED %s', 'REC'));
        fprintf(pcvsa, sprintf(':SENSe:FREQuency:SPAN %g', bw));
%         fprintf(pcvsa, sprintf(':TRACeB:Y:AUToscale'));
%         fprintf(pcvsa, sprintf(':TRACeD:Y:AUToscale'));
        %     % Pretty up the displays
        % fprintf(t, ':TRACe1:Y:AUToscale');
        % fprintf(t, ':TRACe2:Y:AUToscale');
        % fprintf(pcvsa, sprintf(':INITiate:CONTinuous 0'));
        fprintf(pcvsa, sprintf(':INITiate:CONTinuous 1'));
        %     fprintf(pcvsa, sprintf(':SENSe:FREQuency:CENTer %g', 00000000.0));
%         fprintf(pcvsa, sprintf(':SENSe:FREQuency:SPAN %g', bw));
%         fprintf(pcvsa, ':INPut:RECording:PLAY:LOOP 1');
            fprintf(pcvsa, ':INITiate:PAUSe');
%         fprintf(pcvsa, ':INITiate:RESTart');
        %     pause(5)
    else
        disp('No active VSA connection')
    end
