function [pdchnew]= pdchsim(traffic,pdchuse)
xx=traffic;
yy=pdchuse;
x=newton(xx,yy);%ţ��
pdchnew=traffic*x;
