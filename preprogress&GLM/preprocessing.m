%%%%% Author:lmy
%% BATCH FOR preprocessing of fmri
subject_file ={'sub05_xuruofei';'sub07_telike';'sub10_liuyetong';'sub13_zengxiang';'sub14_changqianwen';'sub17_yangliu';'sub02_linjunfeng';'sub03_wangmeiqing';'sub06_dengguangyu';'sub11_lishuyan';'sub15_chenyun';'sub18_zhengweiming';'sub04_zhujunhao';'sub08_liaoxinmei';'sub09_zhousiyi';'sub12_xiatianbao';'sub16_fengjingshan';'sub19_yangmingyue'};
%% % % % % % % % % % % % % % % % % % % Dicom output
% for s = 1:length(subject_file)
%     for f = 1:4
%         fmri_ori_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun',num2str(f,'%02d'),'\']);
% %         tempt_slice_o = spm_dicom_headers(fmri_ori_files{1});
% %         slice_time_order(f,:) =  tempt_slice_o{1, 1}.Private_0019_1029;
%         jobmanmatlabbatch{1}.spm.util.import.dicom.data = fmri_ori_files;
%         jobmanmatlabbatch{1}.spm.util.import.dicom.root = 'flat';
%         mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(f,'%02d')]);
%         jobmanmatlabbatch{1}.spm.util.import.dicom.outdir = {['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(f,'%02d')]};
%         jobmanmatlabbatch{1}.spm.util.import.dicom.protfilter = '.*';
%         jobmanmatlabbatch{1}.spm.util.import.dicom.convopts.format = 'nii';
%         jobmanmatlabbatch{1}.spm.util.import.dicom.convopts.icedims = 0;
%         spm_jobman('run',jobmanmatlabbatch);
%         clear jobmanmatlabbatch;
%     end
% end
% %% % % % % % % % % % % % % % % % % % T1
% for s = 1:length(subject_file)
%     fmri_ori_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\T1\post\']);
%     jobmanmatlabbatch{1}.spm.util.import.dicom.data = fmri_ori_files;
%     jobmanmatlabbatch{1}.spm.util.import.dicom.root = 'flat';
%     mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\T1Dicom']);
%     jobmanmatlabbatch{1}.spm.util.import.dicom.outdir = {['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\T1Dicom']};
%     jobmanmatlabbatch{1}.spm.util.import.dicom.protfilter = '.*';
%     jobmanmatlabbatch{1}.spm.util.import.dicom.convopts.format = 'nii';
%     jobmanmatlabbatch{1}.spm.util.import.dicom.convopts.icedims = 0;
%     spm_jobman('run',jobmanmatlabbatch);
%     clear jobmanmatlabbatch;
% end
%% % % % % % % % % % % % % % % % % % %  % % % % slice timing
n=5;%time point to remove
for s = 1:length(subject_file)
    tempt_s1=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(1,'%02d'),'\']); 
    dic_files=tempt_s1(n+1:end); 
    tempt_s1=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(2,'%02d'),'\']);
    dic_files_s2=tempt_s1(n+1:end);
    tempt_s1=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(3,'%02d'),'\']); 
    dic_files_s3=tempt_s1(n+1:end); 
    tempt_s1=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(4,'%02d'),'\']);
    dic_files_s4=tempt_s1(n+1:end);
    matlabbatch{1}.spm.temporal.st.scans = {dic_files dic_files_s2 dic_files_s3 dic_files_s4};
    matlabbatch{1}.spm.temporal.st.nslices = 72;
    matlabbatch{1}.spm.temporal.st.tr = 2;
    matlabbatch{1}.spm.temporal.st.ta = 1.97222222222222;
    fmri_ori_files = my_ls([subject_file{s},'\PostFun\Fun',num2str(f,'%02d'),'\']);
    hdr = spm_dicom_headers(fmri_ori_files{1});
    slice_order = hdr{1, 1}.Private_0019_1029;
    matlabbatch{1}.spm.temporal.st.so = slice_order;
    a = sort(slice_order); 
    b = a(round(length(slice_order)/2));
    matlabbatch{1}.spm.temporal.st.refslice = b;    
    matlabbatch{1}.spm.temporal.st.prefix = 'a';
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
end
%% % % % % % % % % % % % % % % % % % % % % % % % realign 
for s = 1:length(subject_file)
    dic_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(1,'%02d'),'\af*']);
    dic_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(2,'%02d'),'\af*']);
    dic_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(3,'%02d'),'\af*']);
    dic_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom',num2str(4,'%02d'),'\af*']);
    matlabbatch{1}.spm.spatial.realign.estwrite.data = {dic_files dic_files_s2 dic_files_s3 dic_files_s4};
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 4;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [2 1];
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
end
for s = 1:length(subject_file)
    mkdir('J:\our_exp\exp3_semantic\analysis\block_emotion\Parameters\');
    fp=fopen('J:\our_exp\exp3_semantic\analysis\block_emotion\Parameters\Headmotion.txt','a');
    fprintf(fp,'%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\r\n','subject','FunRaw01_mo','FunRaw01_ro','FunRaw02_m','FunRaw02_ro','FunRaw03_m','FunRaw03_ro','FunRaw04_m','FunRaw04_ro');
    fclose(fp);
    dic_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom01\rp*']);
    dic_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom02\rp*']);
    dic_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom03\rp*']);
    dic_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom04\rp*']);
    tempt_s1=textread(dic_files{1});
    maxrig_s1=max(max(abs(tempt_s1(:,(1:3)))));
    maxrot_s1=max(max(abs(tempt_s1(:,(4:6)))))*180/pi;
    tempt_s2=textread(dic_files_s2{1});
    maxrig_s2=max(max(abs(tempt_s2(:,(1:3)))));
    maxrot_s2=max(max(abs(tempt_s2(:,(4:6)))))*180/pi;
    tempt_s3=textread(dic_files_s3{1});
    maxrig_s3=max(max(abs(tempt_s3(:,(1:3)))));
    maxrot_s3=max(max(abs(tempt_s3(:,(4:6)))))*180/pi;
    tempt_s4=textread(dic_files_s4{1});
    maxrig_s4=max(max(abs(tempt_s4(:,(1:3)))));
    maxrot_s4=max(max(abs(tempt_s4(:,(4:6)))))*180/pi;
    fp=fopen('J:\our_exp\exp3_semantic\analysis\block_emotion\Parameters\Headmotion.txt','a');
    fprintf(fp,'%s\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\r\n',['sub_',num2str(s,'%02d')],maxrig_s1,maxrot_s1,maxrig_s2,maxrot_s2,maxrig_s3,maxrot_s3,maxrig_s4,maxrot_s4);
    fclose(fp);
end
%% % % % % % % % % % % % % % % % % % % % % %  Coregister (计算功能像和结构像之间的转换矩阵)
for s = 1:length(subject_file)
    dic_T1_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\T1Dicom\s*']);
    dic_mean_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom01\mean*']);
    matlabbatch{1}.spm.spatial.coreg.estimate.ref = {dic_T1_files{1}}; %%reference image：结构像
    matlabbatch{1}.spm.spatial.coreg.estimate.source = {dic_mean_files{1}}; %%功能像的一个平均像，作为所有功能像的代表去计算功能像和结构像之间的转换矩阵
    matlabbatch{1}.spm.spatial.coreg.estimate.other = {''};
    matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
    matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
    matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
    matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
end
% % % % % % % % % % % % % % % %% % % % % % % SEGMENT
for s = 1:length(subject_file)
    dic_T1_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\T1Dicom\s*']);
    matlabbatch{1}.spm.spatial.preproc.channel.vols = {dic_T1_files{1}};
    matlabbatch{1}.spm.spatial.preproc.channel.biasreg = 0.001;
    matlabbatch{1}.spm.spatial.preproc.channel.biasfwhm = 60;
    matlabbatch{1}.spm.spatial.preproc.channel.write = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(1).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,1'};
    matlabbatch{1}.spm.spatial.preproc.tissue(1).ngaus = 1;
    matlabbatch{1}.spm.spatial.preproc.tissue(1).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(1).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(2).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,2'};
    matlabbatch{1}.spm.spatial.preproc.tissue(2).ngaus = 1;
    matlabbatch{1}.spm.spatial.preproc.tissue(2).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(2).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(3).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,3'};
    matlabbatch{1}.spm.spatial.preproc.tissue(3).ngaus = 2;
    matlabbatch{1}.spm.spatial.preproc.tissue(3).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(3).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(4).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,4'};
    matlabbatch{1}.spm.spatial.preproc.tissue(4).ngaus = 3;
    matlabbatch{1}.spm.spatial.preproc.tissue(4).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(4).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(5).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,5'};
    matlabbatch{1}.spm.spatial.preproc.tissue(5).ngaus = 4;
    matlabbatch{1}.spm.spatial.preproc.tissue(5).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(5).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(6).tpm = {'F:\brain\spm12\spm12\tpm\TPM.nii,6'};
    matlabbatch{1}.spm.spatial.preproc.tissue(6).ngaus = 2;
    matlabbatch{1}.spm.spatial.preproc.tissue(6).native = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(6).warped = [0 0];
    matlabbatch{1}.spm.spatial.preproc.warp.mrf = 1;
    matlabbatch{1}.spm.spatial.preproc.warp.cleanup = 1;
    matlabbatch{1}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
    matlabbatch{1}.spm.spatial.preproc.warp.affreg = 'mni';
    matlabbatch{1}.spm.spatial.preproc.warp.fwhm = 0;
    matlabbatch{1}.spm.spatial.preproc.warp.samp = 3;
    matlabbatch{1}.spm.spatial.preproc.warp.write = [1 1];
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
end
% % % % % % % % % % % % % % % % % movefile
for s = 1:length(subject_file)
    source_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom01\raf*']);
    source_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom02\raf*']);
    source_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom03\raf*']);
    source_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom04\raf*']);
    dic_mean_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom01\mean*']);
    RP_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom01\rp*']);
    RP_files_S2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom02\rp*']);
    RP_files_S3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom03\rp*']);
    RP_files_S4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\FunRawDicom04\rp*']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF01']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF02']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF03']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF04']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\Parameters\sub_',subject_file{s}]);
    for f=1:length(source_files)
        movefile(source_files{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF01']);
    end
    for f=1:length(source_files_s2)
        movefile(source_files_s2{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF02']);
    end
    for f=1:length(source_files_s3)
        movefile(source_files_s3{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF03']);
    end
    for f=1:length(source_files_s4)
        movefile(source_files_s4{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF04']);
    end
        movefile(dic_mean_files{1},['J:\our_exp\exp3_semantic\analysis\block_emotion\Parameters\sub_',subject_file{s}]);
        movefile(RP_files{1},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF01']);
        movefile(RP_files_S2{1},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF02']);
        movefile(RP_files_S3{1},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF03']);
        movefile(RP_files_S4{1},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF04']);
end

%% % % % % % % % % % % % % % % % % % % % Normalize 用上一步计算得到T1和fun之间的转换矩阵，将fun配准到T1上，再将带有fun的T1配准到标准结构空间中
for s = 1:length(subject_file)
    defor_file=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\T1Dicom\y*']);
    dic_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF01\raf*']);
    dic_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF02\raf*']);
    dic_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF03\raf*']);
    dic_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF04\raf*']);
    matlabbatch{1}.spm.spatial.normalise.write.subj(1).def = {defor_file{1}};
    matlabbatch{1}.spm.spatial.normalise.write.subj(1).resample = {dic_files{:,1}}';
    matlabbatch{1}.spm.spatial.normalise.write.subj(2).def = {defor_file{1}};
    matlabbatch{1}.spm.spatial.normalise.write.subj(2).resample = {dic_files_s2{:,1}}';
    matlabbatch{1}.spm.spatial.normalise.write.subj(3).def = {defor_file{1}};
    matlabbatch{1}.spm.spatial.normalise.write.subj(3).resample = {dic_files_s3{:,1}}';
    matlabbatch{1}.spm.spatial.normalise.write.subj(4).def = {defor_file{1}};
    matlabbatch{1}.spm.spatial.normalise.write.subj(4).resample = {dic_files_s4{:,1}}';
    matlabbatch{1}.spm.spatial.normalise.write.woptions.bb = [-90 -126 -72
                                                              90 90 108];
    matlabbatch{1}.spm.spatial.normalise.write.woptions.vox = [2 2 2];
    matlabbatch{1}.spm.spatial.normalise.write.woptions.interp = 4;
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
    source_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF01\wraf*']);
    source_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF02\wraf*']);
    source_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF03\wraf*']);
    source_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_RAF04\wraf*']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF01']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF02']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF03']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF04']);
    for f=1:length(source_files)
        movefile(source_files{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF01']);
    end
    for f=1:length(source_files_s2)
        movefile(source_files_s2{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF02']);
    end
    for f=1:length(source_files_s3)
        movefile(source_files_s3{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF03']);
    end
    for f=1:length(source_files_s4)
        movefile(source_files_s4{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF04']);
    end
end
%% % % % % % % % % % % Smooth
for s = 1:length(subject_file)
    dic_files=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF01\wraf*']);
    dic_files_s2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF02\wraf*']);
    dic_files_s3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF03\wraf*']);
    dic_files_s4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF04\wraf*']);
    matlabbatch{1}.spm.spatial.smooth.data = {dic_files{:,1}}';
    matlabbatch{1}.spm.spatial.smooth.fwhm = [6 6 6];
    matlabbatch{1}.spm.spatial.smooth.dtype = 0;
    matlabbatch{1}.spm.spatial.smooth.im = 0;
    matlabbatch{1}.spm.spatial.smooth.prefix = 's';
    matlabbatch{2}.spm.spatial.smooth.data = {dic_files_s2{:,1}}';
    matlabbatch{2}.spm.spatial.smooth.fwhm = [6 6 6];
    matlabbatch{2}.spm.spatial.smooth.dtype = 0;
    matlabbatch{2}.spm.spatial.smooth.im = 0;
    matlabbatch{2}.spm.spatial.smooth.prefix = 's';
    matlabbatch{3}.spm.spatial.smooth.data = {dic_files_s3{:,1}}';
    matlabbatch{3}.spm.spatial.smooth.fwhm = [6 6 6];
    matlabbatch{3}.spm.spatial.smooth.dtype = 0;
    matlabbatch{3}.spm.spatial.smooth.im = 0;
    matlabbatch{3}.spm.spatial.smooth.prefix = 's';
    matlabbatch{4}.spm.spatial.smooth.data = {dic_files_s4{:,1}}';
    matlabbatch{4}.spm.spatial.smooth.fwhm = [6 6 6];
    matlabbatch{4}.spm.spatial.smooth.dtype = 0;
    matlabbatch{4}.spm.spatial.smooth.im = 0;
    matlabbatch{4}.spm.spatial.smooth.prefix = 's';
    spm_jobman('run',matlabbatch);
    clear matlabbatch;
    dic_file_S=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF01\swraf*']);
    dic_file_S2=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF02\swraf*']);
    dic_file_S3=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF03\swraf*']);
    dic_file_S4=my_ls(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_WRAF04\swraf*']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF01']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF02']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF03']);
    mkdir(['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF04']);
    for f=1:length(dic_file_S)
        movefile(dic_file_S{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF01']);
    end
    for f=1:length(dic_file_S2)
        movefile(dic_file_S2{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF02']);
    end
    for f=1:length(dic_file_S3)
        movefile(dic_file_S3{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF03']);
    end
    for f=1:length(dic_file_S4)
        movefile(dic_file_S4{f},['J:\our_exp\exp3_semantic\analysis\block_emotion\',subject_file{s},'\PostFun\Fun_SWRAF04']);
    end
end