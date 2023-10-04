clc
clear all
close all
MA = load('DadosBauru2022.txt');  %colocar o csv
n = size(MA);  

t_real=MA(:,1);                                         % primeira coluna (tempo - dias)
HI_real=MA(:,3);                                         % terceira coluna  (Y - casos)

X0=[0.3 0.061 0.423];  %mum mua alpha

options = optimset('MaxFunEvals',9999999999999999); 

lb = [0.1 0.01 0.01];                 
ub = [0.9 0.9 0.6];


resultado = lsqnonlin(@fit_simp,X0,lb,ub,options,MA);
x=resultado                                            % parametros estimados

dengue_bauru

figure(1)
plot(t,HS_estimado,'r');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_S, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;

figure(1)
plot(t,HI_estimado,'g');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_I, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;

figure(1)
plot(t,HR_estimado,'b');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_R, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;

figure(1)
plot(t,MS_estimado,'m');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('M_S, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;

figure(1)
plot(t,MI_estimado);                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('M_I, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;
figure(1)
plot(t,HI_estimado,'g');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_I, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;
figure(1)
plot(t,HI_estimado,'g');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_I, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;
figure(1)
plot(t,A_estimado,'k');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('A, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;

figure(2)
plot(t,HI_estimado,'g', t_real, HI_real, 'bo');                   
xlabel('tempo(dias)');                                            
ylabel('População'); 
legend('H_I, com \gamma=1')
title('Cenário 3 - Q_0>1 e R_0>1');
hold on;
