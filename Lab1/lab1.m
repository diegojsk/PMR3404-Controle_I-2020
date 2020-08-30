%% Controle I - Lab1
%

%% 4.1.
syms s t

K1 = 100;
Km = 2.083;
Kg = 0.1;
k = K1*Km*Kg;

z = [];

a = 100;
am = 1.71;
p = [-a ; -am];

Gw1 = zpk(z,p,k);

Gw2 = partfrac(20.83/((s+100)*(s+1.71)));
pretty(Gw2);

t = 0:0.1:10;
y = step(Gw1,t);
figure(416)
%plot(t,y);
title("Questão 4.1.6 - Resposta ao degrau de Gw(s)");

%% 4.2.

syms s t

K1 = 100;
Km = 2.083;
Kg = 0.1;
k = K1*Km*Kg;

z = [];

a = 100;
am = 1.71;
p = [0; -a ; -am];

Gt1 = zpk(z,p,k)

Gt2 = partfrac(20.83/((s+100)*(s+1.71)));
pretty(Gw2);

t = 0:0.1:10;
y = step(Gt1,t);
figure(424);
%plot(t,y);
title("Questão 4.2.4 - Resposta ao degrau de Gtheta(s)");

%% 6.1
Ktac = ;
K1 = ;
Kp = ;

K = Ktac*Kp*K1*Km*Kg