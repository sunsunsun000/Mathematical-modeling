clc, clear
x0=[1.24,1.27; 1.36,1.74; 1.38,1.64; 1.38,1.82; 1.38,1.90; 1.40,1.70
    1.48,1.82; 1.54,1.82; 1.56,2.08; 1.14,1.82; 1.18,1.96; 1.20,1.86
    1.26,2.00; 1.28,2.00; 1.30,1.96]; %输入已知样本数据
x=[1.24,1.80; 1.28,1.84; 1.40,2.04]; %输入待判样本点数据
group=[ones(9,1); -ones(6,1)]; %输入已知样本标志
s=svmtrain(x0,group); %使用线性核函数训练支持向量机的分类器
check=svmclassify(s,x0)  %对已知样本点进行检验
solution=svmclassify(s,x) %对未知样本点进行判别
