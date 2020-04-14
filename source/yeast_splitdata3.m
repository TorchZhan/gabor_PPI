yeast_data=data_Gabor;
p=randperm(size(yeast_data,1));

%DCT

for i = 1:size(yeast_data,1)
      yeast_data(i,2:201)=yeast_data(i,2:201)/norm(yeast_data(i,2:201));
end

dataall=yeast_data;
dataall=dataall(p(1:size(yeast_data,1)),:);
flod_num=5; 
step =floor(size(dataall,1)/flod_num);
j=1
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     yeast_f1_test_feature = dataall(cv_p,2:201);
     yeast_f1_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     yeast_f1_train_feature= A(:,2:201);
     yeast_f1_train_label=A(:,1);
     
j=2
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     yeast_f2_test_feature = dataall(cv_p,2:201);
     yeast_f2_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     yeast_f2_train_feature= A(:,2:201);
     yeast_f2_train_label=A(:,1);

j=3
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     yeast_f3_test_feature = dataall(cv_p,2:201);
     yeast_f3_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     yeast_f3_train_feature= A(:,2:201);
     yeast_f3_train_label=A(:,1);
     
j=4
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     yeast_f4_test_feature = dataall(cv_p,2:201);
     yeast_f4_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     yeast_f4_train_feature= A(:,2:201);
     yeast_f4_train_label=A(:,1);

j=5
    if j~=flod_num
        st=(j-1)*step+4;
        sed=(j)*step;
    else
        st=(j-1)*step+4;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     yeast_f5_test_feature = dataall(cv_p,2:201);
     yeast_f5_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     yeast_f5_train_feature= A(:,2:201);
     yeast_f5_train_label=A(:,1);
     
     