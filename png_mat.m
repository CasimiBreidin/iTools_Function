% 读取 PNG 图片
image_path = "E:\AA实验室\有用的代码\img_input.png";
data = imread(image_path);

% 归一化图像数据!
data = mat2gray(data);

% 保存为 MAT 文件
save("E:\AA实验室\有用的代码\img_input.mat", 'data');