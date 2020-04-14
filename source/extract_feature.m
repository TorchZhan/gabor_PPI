%% ¶ÁÈ¡Êý¾Ý
load('..\data\yeast_All_Pssm.mat')

%%
N_A_feature=[];
N_B_feature=[];
P_A_feature=[];
P_B_feature=[];
gaborArray = gaborFilterBank(5,8,39,39);

%%

for i=1:size(N_A_Pssm,2)
    i;

    S=gaborFeatures(N_A_Pssm{1,i},gaborArray,4,4);
    S=S';    
    S=S(1,1:100);
    N_A_feature(i,:)=S(:);
end

for i=1:size(N_B_Pssm,2)
    i;
    S=gaborFeatures(N_B_Pssm{1,i},gaborArray,4,4);
    S=S';
    S=S(1,1:100);
    N_B_feature(i,:)=S(:);
end

for i=1:size(P_A_Pssm,2)
    i;
    S=gaborFeatures(P_A_Pssm{1,i},gaborArray,4,4);
    S=S';
    S=S(1,1:100);
    P_A_feature(i,:)=S(:);
end

for i=1:size(P_B_Pssm,2)
    i;
    S=gaborFeatures(P_B_Pssm{1,i},gaborArray,4,4);
    S=S';
    S=S(1,1:100);
    P_B_feature(i,:)=S(:);
end

