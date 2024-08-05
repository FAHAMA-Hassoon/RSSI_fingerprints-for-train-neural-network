clear all;
close all;
clc;
load rssi_ideal;
 load test_ideal;
 Dataset=rssi_ideal;                %d330;
Testpoint=   test_ideal;            %t330;
input=Dataset(:,3:end)';
target=Dataset(:,1:2)';
input_test=Testpoint(:,3:end)';
actual=Testpoint(:,1:2)';
 test_results=netideal3(input_test);
 view(netideal3)
 for i=1:length(test_results(1,:))
plot(test_results(1,i),test_results(2,i),'ko','LineWidth',1.9)
hold on;plot(actual(1,i),actual(2,i),'r*','LineWidth',1.9);
legend('MLP Estimation','Ground Truth');
str=['1','2','3','4','5','6','7','8','9',"10"];
text(test_results(1,i)+0.1,test_results(2,i)+0.04,str(i),'fontsize',21);
text(actual(1,i)-0.3,actual(2,i),str(i),'fontsize',21);
 end
 grid on