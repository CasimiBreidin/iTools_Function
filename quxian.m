%%
%读取CSV文件中的数据
fid = fopen("E:\AA实验室\OSDM\OSDM论文修改对比实验\两种数据集result_max的残差图\NCSN++\1e5\result_time_4.csv");
fid2 = fopen("E:\AA实验室\OSDM\OSDM论文修改对比实验\曲线-AAPM-1e5\最终\最终\消融实验\H-SVD with Generative Model and TV\cut_48f_1e5\P_4_all.csv");
data = textscan(fid, '%f%f%f%f%f%s%s%s%s', 'Delimiter',',', 'HeaderLines', 1, 'CollectOutput', 1); 
data2 = textscan(fid2, '%f%f%f%f%f%s%s%s%s', 'Delimiter',',', 'HeaderLines', 1, 'CollectOutput', 1); 
fclose(fid);
fclose(fid2);

% 提取PSNR数据
psnr = data{1}(:,1);
psnr2 = data2{1}(:,1);


% % 绘制PSNR曲线
f = figure;
plot(0:length(psnr)-1, psnr,'b.', 0:length(psnr2)-1, psnr2,'r.')
xlim([0 700]);
% 给第一条曲线设置形状
% hold on
% for i = 1:50:length(psnr)
%     plot(i-1,psnr(i),'bv','markersize',10,'markerfacecolor','c')
% end
% hold off

xlabel('Step');
ylabel('PSNR');
title('PSNR Curve');
legend('NCSN++','OSDM')
grid on
saveas(f, 'fig.png');
%% 
% x = [0 50 100 150 210 215 220 250 300 400 500 600 700];
% xx = 1:length(x);
% % E:\AA实验室\OSDM(Low Dose CT）\OSDM论文修改对比实验\曲线-AAPM-1e5\NCSN++\0_0.5
% y = [36.0145294982 39.4432644111 40.4404092287 40.7949170468 41.010159813 41.0232021994 41.0352830144 41.1004141799 41.1765757567 41.2665816781 41.3071927769 41.3235626697 41.3321269596];
% 
% 
% x2 = [0 50 100 150 210 215 220 250 300 400 500];
% xx2 = 1:length(x2);
% % E:\AA实验室\OSDM(Low Dose CT）\OSDM论文修改对比实验\曲线-AAPM-1e5\OSDM\
% %y2 = [35.9157891706 41.3856058296 42.640999404 42.170900353];
% % E:\AA实验室\OSDM(Low Dose CT）\OSDM论文修改对比实验\曲线-AAPM-1e5\OSDM\1500_0.1\第一步最高
% y2 = [37.8723657087 41.9725516606 42.4954894038 42.675754168 42.7166556891 42.7167853349 42.7166761333 42.712689211 42.6997595235 42.6765062396 42.6640835179];
% 
% plot(xx,y,'*-',xx2,y2,'*-');
% 
% xticks(xx)
% 
% set(gca,'XTickLabel',{'0','50','100','150','210','215','220','250','300','400','500','600','700'});
% 
% 
% xlabel('Step');
% ylabel('PSNR');
% %title('PSNR Curve');
% legend('NCSN++','OSDM')





