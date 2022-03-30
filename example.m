clc
clear all

%%加载数据，可以从http://www.cad.zju.edu.cn/home/dengcai/Data/data.html下载
load Yale_64x64.mat
load 5Train.mat
fea_Train = fea(trainIdx,:); 
fea_Test = fea(testIdx,:); 

gnd_Train = gnd(trainIdx); 
gnd_Test = gnd(testIdx); 




options = [];
options.k = 3;
%% Sparse Representation Optimization

[Ww, Wb] = Graph_Cons(gnd_Train, options, fea_Train);%% fea_Train格式为样本数m*维数n

%[W_compute, Y, ~] = SR_Opt(fea_Train, Ww, Wb, 20,0.01,10);
disp(Ww);
disp(Wb);



