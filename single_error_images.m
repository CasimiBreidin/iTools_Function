% 单个mat图和原图mat作残差
% 计算残差
close all;
clc;clear;


loadfolder  = "E:\AA实验室\有用的代码\img_input.mat";
savefolder = 'E:\AA实验室\有用的代码\';

gt = load("E:\AA实验室\有用的代码\0319.mat").data;
%Ori = squeeze(gt(10,:,:)); %120 is 5, 180 is 10
Ori = squeeze(gt(:,:));


%
ext               =  {'*.jpg','*.png','*.bmp' '*.tif'};
filepaths           =  [];
% 读取满足后缀的所有文件
for i = 1 : length(ext)
    filepaths = cat(1,filepaths, dir(fullfile(loadfolder, ext{i})));
end


en = [];
%for i = 1:1%length(filepaths)
%path = loadfolder;%fullfile(loadfolder,filepaths(i).name)
%Im = imread(path);

imm = load(loadfolder).data;
Im = squeeze(imm(:,:)); %


max(max(Im))
min(min(Im))
max(max(abs(Im)))
%Im = Im./max(max(abs(Im)));
%Ori = Ori./max(max(abs(Ori)));
max(max(Im))
min(min(Im))

imshow(Ori)

figure(2);imshow(Im)

err = abs(double(Ori) - double(Im));
figure,imshow(err,'border','tight');
colormap(jet);
caxis([0,1]);
f=getframe(gcf);
  
%en = cat(2,en,en0);

imwrite(f.cdata,fullfile(savefolder,'1111111111.png'))
%end