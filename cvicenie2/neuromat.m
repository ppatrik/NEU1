clear % resetovanie premennych
N=5; % počet klasických neurónov
Typy=[1 0 0 1 0 -1 -1 -1];
Hrany=[
    1 2;
    2 1;
    1 3;
    2 N+2;
    3 4;
    3 5;
    4 1;
    4 N+2;
    5 1;
    5 N+2;
    N+3 N+2;
    N+3 1;
    N+1 1;
    N+1 2;
    N+1 3;
    N+1 4;
    N+1 5];
Stavy=[0 0 0 0 0 0 0 1];

ed=zeros(N+3);
for k=1:size(Hrany)
    j=Hrany(k,1);
    i=Hrany(k,2);
    ed(j,i)=1;
end;

% Vypocet d
for i=1:N+3
   d(i)=0;
   for j=1:N+3
       if (j~=N+1) && (ed(j,i)==1)
           d(i)=d(i)+1;
       end;
   end;
end;

% vypocet vah a prahov
for i=1:N+3
    % inicializovane vahy
    for j=1:N+3
        w(i,j)=0;
    end;
    
    for j=1:N+3
        if j~=N+1 && ed(j,i)==1
            w(i,j)=1;
        end;
        if Typy(i)==1 
            w(i,N+1)=d(i);
            Prahy(i)=d(i)+1;
        elseif Typy(i)==0
            w(i,N+1)=d(i);
            Prahy(i)=1;
        end;
        
    end;
end;

Prahy(N+3)=1;
Prahy(N+2)=1;
Prahy(N+1)=0;
for j=1:N+3
    if j~=N+1 && ed(j,N+2)==1
        w(N+2,j)=1;
    end;
end;

z=Stav(N,4,1,ed,Stavy,Prahy,w)

% dokoncit vypocet DU
