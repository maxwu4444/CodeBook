% 要进行图像计算的文件
filenames=wholedir_cell(['E:\lmy_exp2\Analyze\RSA\01_betafiles_ra\01_ER_betaseries_ra_average_6runs_4Dfiles\all_item']);
for i=1:18
    inputfile{i}=[filenames{i},',1'];
end
matlabbatch{1}.spm.util.imcalc.input = inputfile;
% 输出名
matlabbatch{1}.spm.util.imcalc.output = 'shape';
% 输出路径
matlabbatch{1}.spm.util.imcalc.outdir = {'E:\lmy_exp2\Analyze\RSA\01_betafiles_ra\01_ER_betaseries_ra_average_6runs_4Dfiles_average'};   
% 图像计算公式
matlabbatch{1}.spm.util.imcalc.expression = '(i1+i2+i3+i4+i5+i5+i6+i7+i8+i9+i10+i11+i12+i13+i14+i15+i16+i17+i18)/18';
%不需要改动的参数
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 60;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
spm_jobman('run',matlabbatch);