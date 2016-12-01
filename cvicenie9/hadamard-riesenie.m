k=4;
S2=[1 1; 1 -1];
S4=[S2 S2; S2 -S2];
S8=[S4 S4; S4 -S4];
S16=[S8 S8; S8 -S8];
U16=[0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1;
0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1;
1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1;
1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1];
V16=[0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1;
1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1;
0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1;
1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1];

c=[1 0 0 0 1 0 0 0; 0 1 0 0 0 1 0 0; 0 0 1 0 0 0 1 0; 0 0 0 1 0 0 0 1];

w=[1 1 1 1];
wf=[-1 1 -1 1];

yy=NaN (1,4);

y=NaN(1,4);
z=NaN(1,4);
b=1.5;
for ii=1:16
for jj=1:16
U=[U16(ii,1) U16(ii,2) U16(ii,3) U16(ii,4)];
V=[V16(jj,1) V16(jj,2) V16(jj,3) V16(jj,4)];
 for k=1:4
   pom1=[U V];
   cc=[c(k,1) c(k,2) c(k,3) c(k,4) c(k,5) c(k,6) c(k,7) c(k,8)];
   pom=cc*pom1';
   if pom-b>=0 pom2=1; else pom2=0; endif;
   y(k)=pom2;
 endfor; 

 for j=1:4
    pom4=w*y';
    if pom4-j+0.5>=0 pom5=1; else pom5=0; endif;
    z(j)=pom5;
 endfor;

    hh=wf*z';
    if hh>=0 pom6=1; else pom6=-1; endif;
    val(ii,jj)=pom6;
endfor;
endfor;

val

%% Ortogonalita
for ii=1:16
   h1=val(ii,1:16);
for jj=1:16
   h2=val(jj,1:16);
   vv(ii,jj)=h1*h2';
endfor
endfor
vv