% load('Yeast_labelofresult5.mat')
% [ACC1,SN1,PE1,SPC1,MCC1] = roc( predictions_f1,yeast_f1_test_label )
% [ACC2,SN2,PE2,SPC2,MCC2] = roc( predictions_f2,yeast_f2_test_label )
% [ACC3,SN3,PE3,SPC3,MCC3] = roc( predictions_f3,yeast_f3_test_label )
% [ACC4,SN4,PE4,SPC4,MCC4] = roc( predictions_f4,yeast_f4_test_label )
% [ACC5,SN5,PE5,SPC5,MCC5] = roc( predictions_f5,yeast_f5_test_label )
% randomorest
% [ACC1,SN1,PE1,SPC1,MCC1] = roc( predict_label1,yeast1_test_label )
% [ACC2,SN2,PE2,SPC2,MCC2] = roc( predict_label2,yeast2_test_label )
% [ACC3,SN3,PE3,SPC3,MCC3] = roc( predict_label3,yeast3_test_label )
% [ACC4,SN4,PE4,SPC4,MCC4] = roc( predict_label4,yeast4_test_label )
% [ACC5,SN5,PE5,SPC5,MCC5] = roc( predict_label5,yeast5_test_label )
mean_ACC = mean([ACC1,ACC2,ACC3,ACC4,ACC5]);
std_ACC = std([ACC1,ACC2,ACC3,ACC4,ACC5]);


mean_SN = mean([SN1,SN2,SN3,SN4,SN5]);
std_SN = std([SN1,SN2,SN3,SN4,SN5]);

mean_PE = mean([PE1,PE2,PE3,PE4,PE5]);
std_PE = std([PE1,PE2,PE3,PE4,PE5]);

mean_SPC = mean([SPC1,SPC2,SPC3,SPC4,SPC5]);
std_SPC = std([SPC1,SPC2,SPC3,SPC4,SPC5]);

mean_MCC = mean([MCC1,MCC2,MCC3,MCC4,MCC5]);
std_MCC = std([MCC1,MCC2,MCC3,MCC4,MCC5]);

mean_AUC = mean([AUC1,AUC2,AUC3,AUC4,AUC5]);
std_AUC = std([AUC1,AUC2,AUC3,AUC4,AUC5]);


fprintf( 'ACC结果是：%.2f±%.2f\n', mean_ACC*100,std_ACC*100)
fprintf( 'SN结果是：%.2f±%.2f\n', mean_SN*100,std_SN*100)
fprintf( 'PE结果是：%.2f±%.2f\n', mean_PE*100,std_PE*100)
fprintf( 'SPC结果是：%.2f±%.2f\n', mean_SPC*100,std_SPC*100)
fprintf( 'MCC结果是：%.2f±%.2f\n', mean_MCC*100,std_MCC*100)
fprintf( 'AUC结果是：%.2f±%.2f\n', mean_AUC*100,std_AUC*100)