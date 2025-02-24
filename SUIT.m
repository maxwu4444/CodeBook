%% step1
% % 从目标所在的T1空间中分离出白质、灰质、小脑区域。会生成seg1、seg2、c_***_pcereb三个文件 分别代表从结构像中分离出来的灰质、白质、小脑部分
% % 被试自己的结构像或者标准空间结构像文件，取决于要转换的目标图像所处空间
% suit_isolate_seg({'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\mni_icbm152.nii'})
% %% step2
% % 从上一步分离得到的三个部分、计算从个体空间到标准空间的转换矩阵。会生成 Affine（transformation）、u_a_**（deformation）两个文件
% job.subjND.gray={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\mni_icbm152_seg1.nii'};
% job.subjND.white={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\mni_icbm152_seg2.nii'};
% job.subjND.isolation={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\c_mni_icbm152_pcereb.nii'};
% suit_normalize_dartel(job)

%% step3 
%把目标文件从所在空间转换到标准空间中,会在目标文件路径下生成wd***.nii的标准化后的图像
job.subj.affineTr={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\Affine_mni_icbm152_seg1.mat'};
job.subj.flowfield={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\u_a_mni_icbm152_seg1.nii'};
job.subj.resample={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\word shape\all cluster.nii'};
job.subj.mask={'E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\T1\c_mni_icbm152_pcereb.nii'};
suit_reslice_dartel(job)

%% step4
%呈现标准化后的flat视角的小脑部分
map=suit_map2surf('E:\exp2\RSA\01 RSA\searchlight r=100 voxels\06GRF cluster in SUIT space\word shape\wdall cluster.nii');
suit_plotflatmap(map)