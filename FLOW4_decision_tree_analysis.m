%import data from the python code.
importdata('mro_plus.xlsx');

%use all the continous variables to train the decision tree.
var_x=[EffcacyAve, age, PersonTot, TotalTests, MeasTot,los_icu,los_hospital,oasis, oasis_prob, wardid_change];

%in-hospital mortality will be the expected label.
hospital_expire_flag_idx=find(hospital_expire_flag(:)==1);

% previously, we try to divide the in-hospital mortality into two groups:
% weekend mortality and weekday mortality, 
%but after we noticed the data imbalance, we decide to only focus on the
%living patients and the mortality group.
var_y=zeros(length(hospital_expire_flag),1);
for i=1:length(hospital_expire_flag)
    if hospital_expire_flag(i)==0
        var_y(i)=0;
    else
        if inday_icu_wkd{i}=='weekday'
            var_y(i)=1;
        else
            var_y(i)=1;
        end
    end
end

% as you can see, we tried something here.
% var_y=[hospital_expire_flag, inday_icu_wkd];
% X=var_x(hospital_expire_flag_idx);
% Y=var_y(hospital_expire_flag_idx);

% variables to build the tree
X=var_x;
Y=var_y;
% tc = fitctree(var_x,var_y)

%setting parameteres 
rng(1); % For reproducibility
MdlDefault = fitctree(X,Y,'CrossVal','on');

numBranches = @(x)sum(x.IsBranch);
mdlDefaultNumSplits = cellfun(numBranches, MdlDefault.Trained);

figure;
histogram(mdlDefaultNumSplits)
% display the deep structure
view(MdlDefault.Trained{1},'Mode','graph')

%control the layer of the tree and simply it
%also display the structure.
Mdl7 = fitctree(X,Y,'MaxNumSplits',7,'CrossVal','on');
view(Mdl7.Trained{1},'Mode','graph')

%above tree identifies three factors: 
% length of the hospital stay, 
% OASIS
% number of the lab tests.
%then we visualize the data here using these factors.

figure
plot3(TotalTests(hospital_expire_flag_idx1), los_hospital(hospital_expire_flag_idx1), oasis(hospital_expire_flag_idx1), 'r*')
hold on
plot3(TotalTests(hospital_expire_flag_idx0), los_hospital(hospital_expire_flag_idx0), oasis(hospital_expire_flag_idx0), 'k*')
hold off
xlabel('Number of lab tests')
xlim([0,2000])
ylabel('Length of hospital stay')
ylim([0,80])
zlabel('OASIS')
zlim([0,70])

