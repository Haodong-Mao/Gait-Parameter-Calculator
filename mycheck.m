function [ln,rn]=mycheck(Lrawdata,Rrawdata,Lstart_index,Lmid_index,Lend_index,Rstart_index,Rmid_index,Rend_index)
% rawdata的第一列是帧数
num_step=length(Lstart_index);
ln=[];
rn=[];
Lflag_mat = Lrawdata(:,6).* Lrawdata(:,10).* Lrawdata(:,14).* Lrawdata(:,18).* Lrawdata(:,22);
Rflag_mat = Rrawdata(:,6).* Rrawdata(:,10).* Rrawdata(:,14).* Rrawdata(:,18).* Rrawdata(:,22);
for i=1:num_step
    ls=find(Lrawdata(:,1)==Lstart_index(i));
    lm=find(Lrawdata(:,1)==Lmid_index(i));
    le=find(Lrawdata(:,1)==Lend_index(i));
    rs=find(Lrawdata(:,1)==Rstart_index(i));
    rm=find(Lrawdata(:,1)==Rmid_index(i));
    re=find(Lrawdata(:,1)==Rend_index(i));
    if ismember(0,Rflag_mat(rs:re))
        rn=[rn i];
    end
    if ismember(0,Lflag_mat)
        ln=[ln i];
    end
end
end