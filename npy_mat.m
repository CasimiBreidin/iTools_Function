

if count(py.sys.path,'') == 0
    insert(py.sys.path,int32(0),'');
end
numpy = py.importlib.import_module('numpy');

% 导入np格式数组到matlab中
filename ="E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\ct_result_create_simple_low_dose\GT\fanflat\batch_img.npy";
npy_array = numpy.load(filename);
mat_array = double(npy_array); % 转换为 Matlab 中的 double 类型数据

% 导出数据到mat文件
filename = "E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\ct_result_create_simple_low_dose\GT\fanflat\batch_img.mat";
matObj = matfile(filename,'Writable',true); % 创建 matfile 对象
matObj.Img = mat_array; % 将数据写入文件