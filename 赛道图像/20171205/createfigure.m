function createfigure(cdata1)
%CREATEFIGURE(CDATA1)
%  CDATA1:  image cdata

%  由 MATLAB 于 06-Dec-2017 09:41:13 自动生成

% 创建 figure
figure1 = figure;
colormap('gray');

% 创建 axes
axes1 = axes('Parent',figure1,...
    'Position',[0.346240608037863 0.472061666266307 0.300751879699248 0.346820809248555]);
axis off
hold(axes1,'on');

% 创建 image
image(cdata1,'Parent',axes1,'CDataMapping','scaled');

% 取消以下行的注释以保留坐标轴的 X 范围
% xlim(axes1,[0.5 80.5]);
% 取消以下行的注释以保留坐标轴的 Y 范围
% ylim(axes1,[0.5 60.5]);
box(axes1,'on');
axis(axes1,'ij');
% 设置其余坐标轴属性
set(axes1,'DataAspectRatio',[1 1 1],'Layer','top','TickDir','out');
