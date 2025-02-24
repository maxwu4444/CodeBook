%%%% PreFun
% subject_file = {'LiXueYing' 'BaoMingZhu' 'XuLinXuan' 'YanXin'};
% subject_file = {'LiXueYing' 'YanXin'};
subject_file = {'Sub14_ChangQianWen'};
for s = 1:length(subject_file)
            filenames1=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_SWRAF01\swraf*']);
            regfile1=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_RAF01\rp*']);
            filenames2=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_SWRAF02\swraf*']);
            regfile2=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_RAF02\rp*']);
            filenames3=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_SWRAF03\swraf*']);
            regfile3=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_RAF03\rp*']);
            filenames4=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_SWRAF04\swraf*']);
            regfile4=my_ls(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Fun_RAF04\rp*']);
            mkdir(['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Results']);   
% % % % % % % % % % % % % % %     
matlabbatch{1}.spm.stats.fmri_spec.dir = {['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Results']};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = filenames1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'realword';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [0
                                                            198
                                                            286
                                                            374];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'realtool';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [22
                                                            110
                                                            308
                                                            396];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'Ttool';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [66
                                                            154
                                                            242
                                                            330];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).name = 'Tword';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).onset = [88
                                                            176
                                                            264
                                                            352];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).name = 'visual';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).onset = [44
                                                            132
                                                            220
                                                            418];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {regfile1{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = filenames2;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'realword';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [22
                                                            110
                                                            308
                                                            396];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'realtool';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [44
                                                            132
                                                            220
                                                            418];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'Ttool';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [88
                                                            176
                                                            264
                                                            352];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).name = 'Tword';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).onset = [0
                                                            198
                                                            286
                                                            374];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).name = 'visual';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).onset = [66
                                                            154
                                                            242
                                                            330];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).orth = 1;matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {regfile2{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = filenames3;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'realword';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [44
                                                            132
                                                            220
                                                            418];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'realtool';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [66
                                                            154
                                                            242
                                                            330];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'Ttool';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [0
                                                            198
                                                            286
                                                            374];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).name = 'Tword';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).onset = [22
                                                            110
                                                            308
                                                            396];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).name = 'visual';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).onset = [88
                                                            176
                                                            264
                                                            352];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).orth = 1;

matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {regfile3{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).scans = filenames4;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).name = 'realword';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).onset = [66
                                                            154
                                                            242
                                                            330];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).name = 'realtool';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).onset = [88
                                                            176
                                                            264
                                                            352];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).name = 'Ttool';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).onset = [22
                                                            110
                                                            308
                                                            396];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).name = 'Tword';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).onset = [44
                                                            132
                                                            220
                                                            418];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).name = 'visual';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).onset = [0
                                                            198
                                                            286
                                                            374];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).duration = 16;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi_reg = {regfile4{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'RealWord';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = [1 0 0 0 0];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'RealTool';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = [0 1 0 0 0];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'Ttool';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.weights = [0 0 1 0 0];
matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'Tword';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 1 0];
matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'visual';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 0 1];
matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'Tword_Ttool';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.weights = [0 0 -1 1 0];
matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{7}.tcon.name = 'Tword_Rword';
matlabbatch{3}.spm.stats.con.consess{7}.tcon.weights = [-1 0 0 1 0];
matlabbatch{3}.spm.stats.con.consess{7}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{8}.tcon.name = 'Tword_visual';
matlabbatch{3}.spm.stats.con.consess{8}.tcon.weights = [0 0 0 1 -1];
matlabbatch{3}.spm.stats.con.consess{8}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{9}.tcon.name = 'Ttool_Rtool';
matlabbatch{3}.spm.stats.con.consess{9}.tcon.weights = [0 -1 1 0 0];
matlabbatch{3}.spm.stats.con.consess{9}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{10}.tcon.name = 'Ttool_visual';
matlabbatch{3}.spm.stats.con.consess{10}.tcon.weights = [0 0 1 0 -1];
matlabbatch{3}.spm.stats.con.consess{10}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{11}.tcon.name = 'Rword_Rtool';
matlabbatch{3}.spm.stats.con.consess{11}.tcon.weights = [1 -1 0 0 0];
matlabbatch{3}.spm.stats.con.consess{11}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{12}.tcon.name = 'Rword_visual';
matlabbatch{3}.spm.stats.con.consess{12}.tcon.weights = [1 0 0 0 -1];
matlabbatch{3}.spm.stats.con.consess{12}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{13}.tcon.name = 'Rtool_visual';
matlabbatch{3}.spm.stats.con.consess{13}.tcon.weights = [0 1 0 0 -1];
matlabbatch{3}.spm.stats.con.consess{13}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.delete = 0;
save (['J:\our_exp\exp1\dur2_formal\fmri_analysis\pre\main\',subject_file{s},'\PreFun\Results\batch.mat'],'matlabbatch');
spm_jobman('run',matlabbatch);
clear('matlabbatch');
end