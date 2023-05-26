clc;
clear;

% % whos 查看变量名
% a = "路径\rec_5.mat";
% data = load(a);
% whos('-file', a);

% %%  展示某张npy或mat图片
% load("路径\rec_11.mat")
% imshow(squeeze(data))




%% 展示batch_img.mat第x个图片
%读取mat文件
load("路径\GT.npy");

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

