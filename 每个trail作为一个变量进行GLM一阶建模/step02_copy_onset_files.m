clc
clear
subnames={'sub05_xuruofei';'sub07_telike';'sub10_liuyetong';'sub13_zengxiang';'sub14_changqianwen';'sub17_yangliu';'sub02_linjunfeng';...
    'sub03_wangmeiqing';'sub06_dengguangyu';'sub11_lishuyan';'sub15_chenyun';'sub18_zhengweiming';'sub04_zhujunhao';'sub08_liaoxinmei';...
    'sub09_zhousiyi';'sub12_xiatianbao';'sub16_fengjingshan';'sub19_yangmingyue'};
for i=1:18
    if i>=1&&i<=10 || i>=12&&i<=15 || i>=17&&i<=18
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun01.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF01\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun02.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF02\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun03.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF03\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun04.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF04\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun05.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF05\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun06.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF06\']);
    elseif i==11        % sub15_chenyun
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun01.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF01\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun03.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF03\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun04.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF04\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun05.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF05\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun06.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF06\']);
    else                % sub12_xiatianbao
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun01.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF01\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun02.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF02\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun03.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF03\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun05.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF05\']);
        copyfile('E:\exp2_data\lmy_exp2_fMRI_data\z_supply_sources\onset information\fun06.txt',['E:\exp2_data\lmy_exp2_fMRI_data\ER\',subnames{i},'\Fun_WRAF06\']);
    end
end



