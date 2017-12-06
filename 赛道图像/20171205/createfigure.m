function createfigure(cdata1)
%CREATEFIGURE(CDATA1)
%  CDATA1:  image cdata

%  �� MATLAB �� 06-Dec-2017 09:41:13 �Զ�����

% ���� figure
figure1 = figure;
colormap('gray');

% ���� axes
axes1 = axes('Parent',figure1,...
    'Position',[0.346240608037863 0.472061666266307 0.300751879699248 0.346820809248555]);
axis off
hold(axes1,'on');

% ���� image
image(cdata1,'Parent',axes1,'CDataMapping','scaled');

% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(axes1,[0.5 80.5]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(axes1,[0.5 60.5]);
box(axes1,'on');
axis(axes1,'ij');
% ������������������
set(axes1,'DataAspectRatio',[1 1 1],'Layer','top','TickDir','out');
