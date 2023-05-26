clc;
clear;

% % whos 查看变量名
% a = "E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\NCSN++CQ500\rec_5.mat";
% data = load(a);
% whos('-file', a);

% %%  展示某张npy或mat图片
% load("E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\OSDM\1e4\rec_11.mat")
% imshow(squeeze(data))




%% 展示batch_img.mat第x个图片
%读取mat文件
load("E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\低剂量hankel对比实验结果\泛化实验\CQ500\GT.npy");

% 显示第二张图片

imshow(squeeze(Img(2, :, :)));


%% 将12x512x512的batch图片中，第x张和第x张互换位置
% load('GT.mat'); % 加载图片
% % 以下是将图片顺序调整为正确顺序的代码
% % 例如，将第2张图片放到第5张位置上
% temp = Img(2, :, :);
% 
% Img(2, :, :) = Img(5, :, :);
% Img(5, :, :) = temp;
% imshow(squeeze(Img(2, :, :)));
% 
% 
% 
% % 将新的GT多维数组保存到新文件中
% save('GT_new.mat', 'Img');

