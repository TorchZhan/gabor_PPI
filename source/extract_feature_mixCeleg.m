load('./Pssm_data/Celegans_Pssm.mat')
alfabeto=['A' 'R' 'N' 'D' 'C' 'Q' 'E' 'G' 'H' 'I' 'L' 'K' 'M' 'F' 'P' 'S' 'T' 'W' 'Y' 'V' 'X'];

P_A_feature=[];
P_B_feature=[];
mixfeature=[];
gaborArray = gaborFilterBank(5,8,39,39);
for i=1:size(P_A_Pssm,2)
    i
    S=gaborFeatures(P_A_Pssm{1,i},gaborArray,4,4);
    S=S';
    S=S(1,1:100);
    P_A_feature(i,:)=S(:);
end

for i=1:size(P_B_Pssm,2)
    i
    S=gaborFeatures(P_B_Pssm{1,i},gaborArray,4,4);
    S=S';
    S=S(1,1:100);
    P_B_feature(i,:)=S(:);
end

mix_feature=[P_A_feature P_B_feature];