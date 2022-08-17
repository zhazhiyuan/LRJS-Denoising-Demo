clc
clear
m_10_1=0; 
m_10_2=0; 
m_10_3=0; 
m_20_1=0; 
m_20_2=0; 
m_20_3=0; 
m_30_1=0; 
m_30_2=0; 
m_30_3=0; 
m_40_1=0;
m_40_2=0; 
m_40_3=0; 
m_50_1=0;
m_50_2=0; 
m_50_3=0; 
m_75_1=0;
m_75_2=0; 
m_75_3=0; 
m_100_1=0;
m_100_2=0; 
m_100_3=0; 

All_data_Results_10_1 = cell(1,200);
All_data_Results_10_2 = cell(1,200);
All_data_Results_10_3 = cell(1,200);

All_data_Results_20_1 = cell(1,200);
All_data_Results_20_2 = cell(1,200);
All_data_Results_20_3 = cell(1,200);

All_data_Results_30_1 = cell(1,200);
All_data_Results_30_2 = cell(1,200);
All_data_Results_30_3 = cell(1,200);

All_data_Results_40_1 = cell(1,200);
All_data_Results_40_2 = cell(1,200);
All_data_Results_40_3 = cell(1,200);

All_data_Results_50_1 = cell(1,200);
All_data_Results_50_2 = cell(1,200);
All_data_Results_50_3 = cell(1,200);

All_data_Results_75_1 = cell(1,200);
All_data_Results_75_2 = cell(1,200);
All_data_Results_75_3 = cell(1,200);

All_data_Results_100_1 = cell(1,200);
All_data_Results_100_2 = cell(1,200);
All_data_Results_100_3 = cell(1,200);



for i = 1:12
ImageNum =i;

switch ImageNum
           case 1
                filename = 'Barbara256';
            case 2
                filename = 'boats_256';
            case 3
                filename = 'Fence_256';
            case 4
                filename = 'foreman256';    
            case 5
                filename = 'House256'; 
                
            case 6
                filename = 'J.Bean_256';
            case 7
                filename = 'Leaves256';
            case 8
                filename = 'lena256';
            case 9
                filename = 'Monarch256';    
            case 10
                filename = 'airplane256'; 
                
            case 11
                filename = 'starfish256';
            case 12
                filename = 'straw_256';
end



for j  =  1:7
    
 
        
filename    
randn ('seed',0);

Sigma_Num        =       [10, 20, 30, 40, 50, 75, 100]; 



Sigma             =       Sigma_Num(j)

c1                =      1

c2                =       1


 if  Sigma== 10
     
     
     gamma  = 0.08;      lambda  =   1.4;   mu  =  0.0001;
     
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 

 m_10_1= m_10_1+1;
 
 s=strcat('A',num2str(m_10_1));
 
 All_data_Results_10_1{m_10_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 


 xlswrite('LRJ£Ó_Sigma_10_test_Final.xls', All_data_Results_10_1{m_10_1},'sheet1',s);
 

 
 
 
 elseif  Sigma==20
     


     gamma  = 0.1;      lambda  =   1.2;   mu  =  0.00007;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_20_1= m_20_1+1;
 
 s=strcat('A',num2str(m_20_1));
 
 All_data_Results_20_1{m_20_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_20_test_Final.xls', All_data_Results_20_1{m_20_1},'sheet1',s);
 
 
 
 
  elseif  Sigma==30
     

         
     gamma  = 0.1;      lambda  =  1.1;   mu  = 0.00001;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_30_1= m_30_1+1;
 
 s=strcat('A',num2str(m_30_1));
 
 All_data_Results_30_1{m_30_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_30_test_Final.xls', All_data_Results_30_1{m_30_1},'sheet1',s);
 

   elseif  Sigma==40
     

         
     gamma  = 0.2;      lambda  =   1;   mu  =  0.00001;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_40_1= m_40_1+1;
 
 s=strcat('A',num2str(m_40_1));
 
 All_data_Results_40_1{m_40_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_40_test_Final.xls', All_data_Results_40_1{m_40_1},'sheet1',s);
 
 


 elseif  Sigma==50

         
     gamma  = 0.2;      lambda  =   0.9;   mu  =  0.00003;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_50_1= m_50_1+1;
 
 s=strcat('A',num2str(m_50_1));
 
 All_data_Results_50_1{m_50_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_50_test_Final.xls', All_data_Results_50_1{m_50_1},'sheet1',s);
 
 
 
 
 elseif  Sigma==75

         
     gamma  = 0.2;      lambda  =   0.9;   mu  =  0.00003;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_75_1= m_75_1+1;
 
 s=strcat('A',num2str(m_75_1));
 
 All_data_Results_75_1{m_75_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_75_test_Final.xls', All_data_Results_75_1{m_75_1},'sheet1',s);
 

 else
     

         
     gamma  = 0.2;      lambda  =   0.9;   mu  =  0.00001;
     
 [filename, Sigma,  BM3D_PSNR, PSNR,FSIM,SSIM, Time_s, jj]     =  LRJS_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_100_1= m_100_1+1;
 
 s=strcat('A',num2str(m_100_1));
 
 All_data_Results_100_1{m_100_1}=  {filename, Sigma, gamma, lambda, mu, c1, c2, BM3D_PSNR, PSNR,FSIM,SSIM,Time_s, jj};
 
 xlswrite('LRJ£Ó_Sigma_100_test_Final.xls', All_data_Results_100_1{m_100_1},'sheet1',s);
 
 

 end
 
clearvars -except filename i m_10_1 m_10_2 m_10_3 m_20_1 m_20_2 m_20_3 m_30_1 m_30_2 m_30_3 m_40_1 m_40_2 m_40_3...
m_50_1 m_50_2 m_50_3 m_75_1 m_75_2 m_75_3 m_100_1 m_100_2 m_100_3 All_data_Results_10_1...
All_data_Results_10_2 All_data_Results_10_3 All_data_Results_20_1 All_data_Results_20_2...
All_data_Results_20_3 All_data_Results_30_1 All_data_Results_30_2 All_data_Results_30_3...
All_data_Results_40_1 All_data_Results_40_2 All_data_Results_40_3 All_data_Results_50_1...
All_data_Results_50_2 All_data_Results_50_3 All_data_Results_75_1 All_data_Results_75_2...
All_data_Results_75_3 All_data_Results_100_1 All_data_Results_100_2 All_data_Results_100_3
end

clearvars -except filename m_10_1 m_10_2 m_10_3 m_20_1 m_20_2 m_20_3 m_30_1 m_30_2 m_30_3 m_40_1 m_40_2 m_40_3...
m_50_1 m_50_2 m_50_3 m_75_1 m_75_2 m_75_3 m_100_1 m_100_2 m_100_3 All_data_Results_10_1...
All_data_Results_10_2 All_data_Results_10_3 All_data_Results_20_1 All_data_Results_20_2...
All_data_Results_20_3 All_data_Results_30_1 All_data_Results_30_2 All_data_Results_30_3...
All_data_Results_40_1 All_data_Results_40_2 All_data_Results_40_3 All_data_Results_50_1...
All_data_Results_50_2 All_data_Results_50_3 All_data_Results_75_1 All_data_Results_75_2...
All_data_Results_75_3 All_data_Results_100_1 All_data_Results_100_2 All_data_Results_100_3
end






         