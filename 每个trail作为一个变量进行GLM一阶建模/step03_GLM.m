% betaseries analysis definition for BASCO
basco_path = fileparts(which('BASCO'));
ER_path = 'E:\lmy_exp2_fMRI_data\ER';  %
AnaDef.Img                  = 'nii';
AnaDef.Img4D                = false;      % true: 4D Nifti
AnaDef.NumCond              = 3;         % number of conditions
AnaDef.Cond                 = { 'Ttools' , 'Twords' , 'Visual'}; % names of conditions；和刺激onset文件最好对应，这里onset文件里第一行是tool的呈现时间，第二行是word 的，第三行是visual的
AnaDef.units                = 'secs';    % unit 'scans' or 'secs'
AnaDef.RT                   = 2;          % repetition time in seconds
AnaDef.fmri_t               = 72;
AnaDef.fmri_t0              = 36;
AnaDef.OutDir               = 'D:\exp2_analyze\FC_task_BSC';  % output directory
AnaDef.Prefix               = 'betaseries';
AnaDef.OnsetModifier        = 0; % subtract this number from the onset-matrix (unit: scans)

AnaDef.VoxelAnalysis        = true;
AnaDef.ROIAnalysis          = false; % ROI level analysis (estimate model on ROIs for network analysis)  %20220518 为了多探索一下，改为true
AnaDef.ROIDir               = fullfile(basco_path,'rois','AALROI90'); % select all ROIs in this directory
AnaDef.ROIPrefix            = 'MNI_';
AnaDef.ROINames             = fullfile(basco_path,'rois','AALROI90','AALROINAMES.txt'); % txt.-file containing ROI names
AnaDef.ROISummaryFunction   = 'mean'; % 'mean' or 'median'

AnaDef.HRFDERIVS            = [0 0];  % temporal and disperion derivatives: [0 0] or [1 0] or [1 1]

% regressors to include into design
AnaDef.MotionReg            = true;
AnaDef.GlobalMeanReg        = false;

% name of output-file (analysis objects)
AnaDef.Outfile= fullfile('D:\exp2_analyze\FC_task_BSC\out_estimated.mat');

cSubj = 0; % subject counter

%vp = {'sub01_LiuBoNing','sub02_LinJunFeng','sub03_WangMeiQing','sub04_ZhuJunHao','sub05_XuRuoFei','sub06_DengGuangYu','sub07_TeLiKe','sub08_LiaoXinMei','sub09_ZhouSiYi','sub10_LiuYeTong','sub11_LiShuYan','sub13_ZengXiang','sub14_ChangQianWen','sub16_FengJingShan','sub17_YangLiu','sub18_ZhengWeiMing','sub19_YangMingYue'};
% subfile = {'changqianwen';'chenyun';'dengguangyu';'fengjingshan';'liaoxinmei';'linjunfeng';'lishuyan';'liuboning';'liuyetong';'telike';'wangmeiqing';'xiatianbao';'xuruofei';'yangliu';'yangmingyue';'zengxiang';'zhengweiming';'zhousiyi';'zhujunhao'};
% vp = {'changqianwen';'chenyun';'dengguangyu';'fengjingshan';'liaoxinmei';'linjunfeng';'lishuyan';'liuboning';'liuyetong';'telike';'wangmeiqing';'xiatianbao';'xuruofei';'yangliu';'yangmingyue';'zengxiang';'zhengweiming';'zhousiyi';'zhujunhao'};

vp={'sub01_liuboning';'sub02_linjunfeng';'sub03_wangmeiqing';'sub04_zhuJunHao';'sub05_xuruofei';'sub06_dengguangyu';'sub07_telike';'sub08_liaoxinmei';...
    'sub09_zhousiyi';'sub10_liuyetong';'sub11_lishuyan';'sub12_xiatianbao';'sub13_zengxiang';'sub14_changqianwen';'sub15_chenyun';'sub16_fengjingshan';...
    'sub17_yangliu';'sub18_zhengweiming';'sub19_yangmingyue'};
for i=2:length(vp)
    cSubj = cSubj+1;
    %if i < 12 || i == 13 || i == 14 || i > 15
    if i < 12 || i == 13 || i == 14 || i > 15
        AnaDef.Subj{cSubj}.DataPath = fullfile(ER_path,vp{i});
        AnaDef.Subj{cSubj}.NumRuns  = 6;
        AnaDef.Subj{cSubj}.RunDirs  = {'Fun_WRAF01','Fun_WRAF02','Fun_WRAF03','Fun_WRAF04','Fun_WRAF05','Fun_WRAF06'};  % 每个run的数据
        AnaDef.Subj{cSubj}.Onsets   = {'fun01.txt','fun02.txt','fun03.txt','fun04.txt','fun05.txt','fun06.txt'};        % 刺激呈现顺序的时间点的文件名
        AnaDef.Subj{cSubj}.Duration = [0 0 0];
        AnaDef.Subj{cSubj}.DurationsFromFile = false;
    elseif i == 12
        AnaDef.Subj{cSubj}.DataPath = fullfile(ER_path,vp{i});
        AnaDef.Subj{cSubj}.NumRuns  = 5;
        AnaDef.Subj{cSubj}.RunDirs  = {'Fun_WRAF01','Fun_WRAF02','Fun_WRAF03','Fun_WRAF05','Fun_WRAF06'};
        AnaDef.Subj{cSubj}.Onsets   = {'fun01.txt','fun02.txt','fun03.txt','fun05.txt','fun06.txt'};
        AnaDef.Subj{cSubj}.Duration = [0 0 0];
        AnaDef.Subj{cSubj}.DurationsFromFile = false;
    else
        AnaDef.Subj{cSubj}.DataPath = fullfile(ER_path,vp{i});
        AnaDef.Subj{cSubj}.NumRuns  = 5;
        AnaDef.Subj{cSubj}.RunDirs  = {'Fun_WRAF01','Fun_WRAF03','Fun_WRAF04','Fun_WRAF05','Fun_WRAF06'};
        AnaDef.Subj{cSubj}.Onsets   = {'fun01.txt','fun03.txt','fun04.txt','fun05.txt','fun06.txt'};
        AnaDef.Subj{cSubj}.Duration = [0 0 0];
        AnaDef.Subj{cSubj}.DurationsFromFile = false;
    end
end
AnaDef.NumSubjects = cSubj;