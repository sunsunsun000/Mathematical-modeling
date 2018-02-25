clc, clear
y=dsolve('D2y=sqrt(1+(Dy)^2)/5/(1-x)','y(0)=0,Dy(0)=0','x')
ezplot(y(2),[0,0.9999]) %符号求解时，得到两个分支，这里画出第二个分支
yy=subs(y(2),'x',1)  %求击中时乙舰行驶的距离
