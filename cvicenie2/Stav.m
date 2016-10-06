function [ stv ] = Stav( N, ii, x, ed, Stavy, Prahy, w )
    % Vypocita stav neuronu ii
    % x je vstup od vstupneho neuronu
    if ii==N+1
        Sta=x;
    else
        st=0;
        for j=1:N+3
            if ed(j,ii)==1
                st=st+w(ii,j)*Stavy(j);
            end
        end
        st=st-Prahy(ii);
        if st>=0 
            Sta=1; 
        else
            Sta=0; 
        end
    end
    stv=Sta;
end
