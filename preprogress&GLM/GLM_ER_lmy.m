% ER
new = [3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19];
[subject_file_all,subjectname_all] = my_ls('D:\lmy_trainingfmri\');
subject_file = subject_file_all(new);
subjectname = subjectname_all(new);
%%
for s = 1:length(subject_file)
            filenames1=my_ls([subject_file{s},'\ER\Fun_SWRAF01\swraf*']);
            regfile1=my_ls([subject_file{s},'\ER\Fun_SWRAF01\rp*']);
            filenames2=my_ls([subject_file{s},'\ER\Fun_SWRAF02\swraf*']);
            regfile2=my_ls([subject_file{s},'\ER\Fun_SWRAF02\rp*']);
            filenames3=my_ls([subject_file{s},'\ER\Fun_SWRAF03\swraf*']);
            regfile3=my_ls([subject_file{s},'\ER\Fun_SWRAF03\rp*']);
            filenames4=my_ls([subject_file{s},'\ER\Fun_SWRAF04\swraf*']);
            regfile4=my_ls([subject_file{s},'\ER\Fun_SWRAF04\rp*']);
            filenames5=my_ls([subject_file{s},'\ER\Fun_SWRAF05\swraf*']);
            regfile5=my_ls([subject_file{s},'\ER\Fun_SWRAF05\rp*']);
            filenames6=my_ls([subject_file{s},'\ER\Fun_SWRAF06\swraf*']);
            regfile6=my_ls([subject_file{s},'\ER\Fun_SWRAF06\rp*']);            
            mkdir([subject_file{s},'\ER\GLM_Results']);   
% % % % % % % % % % % % % % %  
matlabbatch{1}.spm.stats.fmri_spec.dir = {[subject_file{s},'\ER\GLM_Results']};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = filenames1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'Ttools';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [4
                                                            14
                                                            36
                                                            48
                                                            56
                                                            74
                                                            80
                                                            90
                                                            96
                                                            104
                                                            120
                                                            158
                                                            174
                                                            178
                                                            226
                                                            228
                                                            238
                                                            252
                                                            254
                                                            278];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [0
                                                            20
                                                            22
                                                            38
                                                            58
                                                            62
                                                            64
                                                            88
                                                            124
                                                            132
                                                            136
                                                            142
                                                            150
                                                            186
                                                            206
                                                            216
                                                            224
                                                            268
                                                            270
                                                            272];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [2
                                                            32
                                                            70
                                                            112
                                                            116
                                                            148
                                                            162
                                                            164
                                                            168
                                                            172
                                                            180
                                                            196
                                                            204
                                                            220
                                                            242
                                                            248
                                                            256
                                                            258
                                                            266
                                                            276];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {regfile1{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = filenames2;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'Ttools';
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [6
                                                            52
                                                            68
                                                            74
                                                            76
                                                            84
                                                            88
                                                            90
                                                            100
                                                            112
                                                            114
                                                            148
                                                            160
                                                            164
                                                            184
                                                            208
                                                            220
                                                            248
                                                            254
                                                            274];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [0
                                                            18
                                                            32
                                                            48
                                                            54
                                                            56
                                                            86
                                                            124
                                                            130
                                                            134
                                                            150
                                                            190
                                                            200
                                                            214
                                                            218
                                                            230
                                                            238
                                                            244
                                                            268
                                                            278];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [4
                                                            12
                                                            16
                                                            28
                                                            38
                                                            42
                                                            64
                                                            70
                                                            110
                                                            116
                                                            132
                                                            140
                                                            142
                                                            152
                                                            170
                                                            176
                                                            234
                                                            262
                                                            266
                                                            270];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {regfile2{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = filenames3;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'Ttools';
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [4
                                                            12
                                                            34
                                                            50
                                                            62
                                                            92
                                                            104
                                                            118
                                                            134
                                                            142
                                                            146
                                                            162
                                                            164
                                                            188
                                                            192
                                                            202
                                                            208
                                                            220
                                                            262
                                                            276];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [14
                                                            20
                                                            22
                                                            24
                                                            36
                                                            48
                                                            54
                                                            72
                                                            80
                                                            86
                                                            90
                                                            102
                                                            128
                                                            148
                                                            170
                                                            186
                                                            194
                                                            248
                                                            258
                                                            266];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [0
                                                            2
                                                            6
                                                            38
                                                            70
                                                            76
                                                            94
                                                            110
                                                            126
                                                            158
                                                            178
                                                            212
                                                            224
                                                            228
                                                            230
                                                            238
                                                            242
                                                            244
                                                            260
                                                            278];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {regfile3{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).scans = filenames4;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).name = 'Ttools';
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).onset = [10
                                                            28
                                                            32
                                                            46
                                                            48
                                                            50
                                                            58
                                                            76
                                                            90
                                                            100
                                                            130
                                                            170
                                                            184
                                                            202
                                                            214
                                                            226
                                                            228
                                                            252
                                                            260
                                                            268];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).onset = [0
                                                            2
                                                            8
                                                            20
                                                            36
                                                            64
                                                            110
                                                            132
                                                            144
                                                            154
                                                            164
                                                            178
                                                            204
                                                            218
                                                            222
                                                            242
                                                            244
                                                            250
                                                            264
                                                            276];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).onset = [4
                                                            30
                                                            42
                                                            68
                                                            70
                                                            86
                                                            98
                                                            102
                                                            106
                                                            116
                                                            126
                                                            134
                                                            140
                                                            158
                                                            186
                                                            192
                                                            206
                                                            208
                                                            234
                                                            266];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi_reg = {regfile4{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).scans = filenames5;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).name = 'Ttools';
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).onset = [2
                                                            6
                                                            10
                                                            16
                                                            52
                                                            56
                                                            58
                                                            76
                                                            94
                                                            106
                                                            128
                                                            144
                                                            156
                                                            164
                                                            208
                                                            224
                                                            238
                                                            252
                                                            262
                                                            274
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).onset = [0
                                                            22
                                                            34
                                                            62
                                                            64
                                                            74
                                                            78
                                                            84
                                                            114
                                                            116
                                                            120
                                                            138
                                                            146
                                                            166
                                                            170
                                                            188
                                                            192
                                                            196
                                                            232
                                                            250
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).onset = [32
                                                            36
                                                            38
                                                            48
                                                            88
                                                            92
                                                            98
                                                            112
                                                            126
                                                            158
                                                            160
                                                            176
                                                            186
                                                            200
                                                            216
                                                            234
                                                            246
                                                            254
                                                            258
                                                            272
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(5).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(5).multi_reg = {regfile5{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(5).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).scans = filenames6;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).name = 'Ttools';
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).onset = [2
                                                            16
                                                            46
                                                            56
                                                            62
                                                            72
                                                            106
                                                            122
                                                            126
                                                            132
                                                            148
                                                            172
                                                            174
                                                            176
                                                            198
                                                            200
                                                            236
                                                            242
                                                            258
                                                            268
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(1).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).name = 'TWord';
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).onset = [0
                                                            18
                                                            20
                                                            24
                                                            38
                                                            52
                                                            60
                                                            64
                                                            120
                                                            152
                                                            162
                                                            184
                                                            194
                                                            208
                                                            216
                                                            218
                                                            224
                                                            254
                                                            260
                                                            274
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(2).orth = 1;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).name = 'baseline';
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).onset = [4
                                                            12
                                                            32
                                                            34
                                                            42
                                                            66
                                                            78
                                                            88
                                                            92
                                                            96
                                                            104
                                                            110
                                                            142
                                                            160
                                                            170
                                                            192
                                                            228
                                                            248
                                                            276
                                                            278
                                                            ];
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).duration = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(6).cond(3).orth = 1;
matlabbatch{1}.spm.stats.fmri_spec.sess(6).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(6).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(6).multi_reg = {regfile6{1}};
matlabbatch{1}.spm.stats.fmri_spec.sess(6).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
%%
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'Ttools';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = [1 0 0];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'TWord';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = [0 1 0];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'baseline';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.weights = [0 0 1];
matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'TWord_Ttools';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.weights = [-1 1 0];
matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'TWord_baseline';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.weights = [0 1 -1];
matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'Ttools_baseline';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.weights = [1 0 -1];
matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'repl';
matlabbatch{3}.spm.stats.con.delete = 0;
save ([subject_file{s},'\ER\GLM_Results\batch.mat'],'matlabbatch');
spm_jobman('run',matlabbatch);
clear('matlabbatch');
end