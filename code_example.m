clear all
close all

%% fieldtrip version fieldtrip-20201103

%% load TF data that were generated using ft_frequanalyses
load('TFR_all_1.mat') % 1 subject 

%% create topoplot - working fine thus verifying that the layout file is okay
cfg = [];
cfg.layout = 'biosemi64.lay';
cfg.xlim = [0.3 0.55];
cfg.ylim = [20 35];
ft_topoplotTFR(cfg,TFR_bascor)

%% create multiplot -- only one TF plot is created instead of 64 (the correct plot is generated using version fieldtrip-20200508
cfg = [];
cfg.layout = 'biosemi64.lay';
cfg.parameter = 'powspctrm';
cfg.colorbar = 'yes';
ft_multiplotTFR(cfg, TFR_bascor)
