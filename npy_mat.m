

if count(py.sys.path,'') == 0
    insert(py.sys.path,int32(0),'');
end
numpy = py.importlib.import_module('numpy');

% 导入np格式数组到matlab中
filename ="路径\batch_img.npy";
npy_array = numpy.load(filename);
mat_array = double(npy_array); % 转换为 Matlab 中的 double 类型数据

% 导出数据到mat文件
filename = "路径\batch_img.mat";
matObj = matfile(filename,'Writable',true); % 创建 matfile 对象
matObj.Img = mat_array; % 将数据写入文件
