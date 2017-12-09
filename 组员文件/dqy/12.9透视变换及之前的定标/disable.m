clear;
    clc;
    A =[5.9418398977142772e+002 0 3.1950000000000000e+002;
        0    5.941839897714e+002 2.3950000000000000e+002;
        0 0 1];%内参数矩阵
    D = [6.7442695842244271e-002 2.4180872220967919e-001 0 0 -3.3970575589699975e-001];%畸变向量
    fx = A(1,1);
    fy = A(2,2);
    cx = A(1,3);
    cy = A(2,3);
    k1 = D(1);
    k2 = D(2);
    k3 = D(5);
    p1 = D(3);
    p2 = D(4);

    K = A;
    %I_d为畸变图形
    I_d = imread('ceVG95iUlovtA.jpg');%读取照片
    I_d = rgb2gray(I_d);%真彩色图像转换为灰度图像
    I_d1=im2bw(I_d);%
    I_d = im2double(I_d);%把图像数据类型转换为double类型。
    %I_r为真实图像
    I_r = zeros(size(I_d));%要与畸变图像的size一致

    %图像坐标系和矩阵的表示是相反的
    %[row,col] = find(X)，坐标按照列的顺序排列，这样好和reshape()匹配出响应的图像矩阵
    [v u] = find(~isnan(I_r));%is not a number并找出矩阵中的非零元素
                              %并将这些元素的线性索引值（linear indices：按列）返回到向量ind中。

    % XYZc 摄像机坐标系的值，但是已经归一化了，因为没有乘比例因子
    %公式 s[u v 1]' = A*[Xc Yc Zc]' ，其中s为比例因子，不加比例因子，Zc就为1，所以此时的Xc相对于( Xc/Zc )
    XYZc= inv(A)*[u v ones(length(u),1)]';%相机坐标系=比例因子s*A的逆矩阵*[u v 1]'

    % 此时的x和y是没有畸变的
    r2 = XYZc(1,:).^2+XYZc(2,:).^2;%r2=x2+y2
    x = XYZc(1,:);%第一行的所有元素
    y = XYZc(2,:);%第二行的所有元素

    % x和y进行畸变的坐标（既有径向畸变也有切向畸变）
    x = x.*(1+k1*r2 + k2*r2.^2) + 2*p1.*x.*y + p2*(r2 + 2*x.^2);
    y = y.*(1+k1*r2 + k2*r2.^2) + 2*p2.*x.*y + p1*(r2 + 2*y.^2);

    % (u, v) 对应的畸变坐标 (u_d, v_d)
    %reshape返回一个和I_r同size的数组，元素为fx*x+cx，按列取
    u_d = reshape(fx*x + cx,size(I_r));
    v_d = reshape(fy*y + cy,size(I_r));

    % 线性插值出非畸变的图像
    I_r = interp2(I_d, u_d, v_d);
    %对比图像
    subplot(221);     
        imagesc(I_d);
        title('畸变原图像');
    subplot(222);
        imagesc(I_r);
        title('校正后图像');
    subplot(223);     
        imshow(I_d1);
        title('二值化图像');