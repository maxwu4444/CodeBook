%从目标所在的T1空间中分离出白质、灰质、小脑区域。会生成seg1、seg2、c_***_pcereb三个文件 分别代表从结构像中分离出来的灰质、白质、小脑部分
suit_isolate_seg({'结构像文件'}); %被试自己的结构像或者标准空间结构像文件，取决于要转换的目标图像所处空间

%从上一步分离得到的三个部分、计算从个体空间到标准空间的转换矩阵。会生成 Affine（transformation）、u_a_**（deformation）两个文件
job.subjND.gray={'***_seg1.nii'};
job.subjND.white={'***_seg2.nii'};
job.subjND.isolation={'c_***_pcereb.nii'};
suit_normalize_dartel(job)


%把目标文件从所在空间转换到标准空间中,会在目标文件路径下生成wd***.nii的标准化后的图像
job.subj.affineTr={'Affine_***.mat'};
job.subj.flowfield={'u_a_***.nii'};
job.subj.resample={'目标文件'};
job.subj.mask={'c_***_pcereb.nii'};
suit_reslice_dartel(job)

%呈现标准化后的flat视角的小脑部分
map=suit_map2surf('wd***');
suit_plotflatmap(map)