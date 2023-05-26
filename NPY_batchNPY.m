
%% 12张·512x512的mat图片变成一张12x512x512的mat图片
%% 注意  img = img_data.data; 代码注释！！！
% 且有两个相同内容的变量名：Img和batch_img

folder = "路径\CQ500_1e4";

% 初始化 batch_img
batch_img = zeros(12, 512, 512);

% 遍历每个索引，读取对应的图像，将其拼接到 batch_img 中
for i = 0:11
    img_path = fullfile(folder, sprintf('rec_img_max_%d.mat', i));
    img_data = load(img_path);
    %img = img_data.your_variable;   %whos可查，我这mat变量名是your_variable而不是Img
    img = img_data.data;   %whos可查，我这mat变量名是your_variable而不是Img
    batch_img(i+1, :, :) = img; % 注意 MATLAB 数组索引是从 1 开始的
end

% 保存为 MAT 格式
save('batch_img.mat', 'batch_img');  %12张·512x512的npy图片变成一张12x512x512的npy图片，变量名是batch_img，但残差图那里是Img变量名

% 增加Img变量名，和batch_img一样内容，但是batch_img删不掉
matObj = matfile('batch_img.mat', 'Writable', true);
matObj.Img = matObj.batch_img;
clear matObj.batch_img;

