%% 1 
trainX=yeast_f1_train_feature;
trainY=yeast_f1_train_label;
testX=yeast_f1_test_feature;
testY=yeast_f1_test_label;

B = TreeBagger(100,trainX,trainY, 'Method', 'classification');
[Predict_label1,Scores1] = predict(B, testX);

num=length(Predict_label1);
for i=1:num
   predict_label1(i,1)=str2double(Predict_label1{i,1});
end
[ACC1,SN1,PE1,SPC1,MCC1] = roc( predict_label1,yeast_f1_test_label );


%% 2
trainX=yeast_f2_train_feature;
trainY=yeast_f2_train_label;
testX=yeast_f2_test_feature;
testY=yeast_f2_test_label;

B = TreeBagger(100,trainX,trainY, 'Method', 'classification');
[Predict_label2,Scores2] = predict(B, testX);

num=length(Predict_label2);
for i=1:num
   predict_label2(i,1)=str2double(Predict_label2{i,1});
end
[ACC2,SN2,PE2,SPC2,MCC2] = roc( predict_label2,yeast_f2_test_label );

%% 3
trainX=yeast_f3_train_feature;
trainY=yeast_f3_train_label;
testX=yeast_f3_test_feature;
testY=yeast_f3_test_label;

B = TreeBagger(100,trainX,trainY, 'Method', 'classification');
[Predict_label3,Scores3] = predict(B, testX);

num=length(Predict_label3);
for i=1:num
   predict_label3(i,1)=str2double(Predict_label3{i,1});
end
[ACC3,SN3,PE3,SPC3,MCC3] = roc( predict_label3,yeast_f3_test_label );

%% 4
trainX=yeast_f4_train_feature;
trainY=yeast_f4_train_label;
testX=yeast_f4_test_feature;
testY=yeast_f4_test_label;

B = TreeBagger(100,trainX,trainY, 'Method', 'classification');
[Predict_label4,Scores4] = predict(B, testX);

num=length(Predict_label4);
for i=1:num
   predict_label4(i,1)=str2double(Predict_label4{i,1});
end
[ACC4,SN4,PE4,SPC4,MCC4] = roc( predict_label4,yeast_f4_test_label );

%% 5
trainX=yeast_f5_train_feature;
trainY=yeast_f5_train_label;
testX=yeast_f5_test_feature;
testY=yeast_f5_test_label;

B = TreeBagger(100,trainX,trainY, 'Method', 'classification');
[Predict_label5,Scores5] = predict(B, testX);

num=length(Predict_label5);
for i=1:num
   predict_label5(i,1)=str2double(Predict_label5{i,1});
end
[ACC5,SN5,PE5,SPC5,MCC5] = roc( predict_label5,yeast_f5_test_label );


