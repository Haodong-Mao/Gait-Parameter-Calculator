%计算Joint angles
% v1-Hip joint extension (max)----直接计算的是整个运动过程中角度的最大值
% v2-Hip joint flexion (min)------直接计算的是整个运动过程中角度的最小值
% v3-Hip joint amplitude (max-min)
% v4-Knee joint extension
% v5-Knee joint flexion
% v6-Knee joint amplitude 
% v7-Ankle joint extension 
% v8-Ankle joint flexion 
% v9-Ankle joint amplitude
function [v1,v2,v3]=get_Joint_angles(raw_data ,start_index  ,end_index ,fps, sheet_index ,xlsx_path,j)
switch j   
    case 1
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),11:13);
            ankle2=raw_data(start_index(i):end_index(i),15:17);
            ankle3=raw_data(start_index(i):end_index(i),19:21);
            vector1=ankle1-ankle2;
            vector2=ankle3-ankle2;
            [angle,~]=get_vector_angle(vector1,vector2);
            angle2=(acos(angle).*180)./pi;
            v1(i)=max(angle2);
            v2(i)=min(angle2);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E43:N43');
        xlswrite(xlsx_path,v2',sheet_index,'E44:N44');
        xlswrite(xlsx_path,v3',sheet_index,'E45:N45');
    case 2
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),7:9);
            ankle2=raw_data(start_index(i):end_index(i),11:13);
            ankle3=raw_data(start_index(i):end_index(i),15:17);
            vector1=ankle1-ankle2;
            vector2=ankle3-ankle2;
            [angle,~]=get_vector_angle(vector1,vector2);
            angle2=(acos(angle).*180)./pi;
            v1(i)=max(angle2);
            v2(i)=min(angle2);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E46:N46');
        xlswrite(xlsx_path,v2',sheet_index,'E47:N47');
        xlswrite(xlsx_path,v3',sheet_index,'E48:N48');
    case 3
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),3:5);
            ankle2=raw_data(start_index(i):end_index(i),7:9);
            ankle3=raw_data(start_index(i):end_index(i),11:13);
            vector1=ankle1-ankle2;
            vector2=ankle3-ankle2;
            [angle,~]=get_vector_angle(vector1,vector2);
            angle2=(acos(angle).*180)./pi;
            v1(i)=max(angle2);
            v2(i)=min(angle2);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E49:N49');
        xlswrite(xlsx_path,v2',sheet_index,'E50:N50');
        xlswrite(xlsx_path,v3',sheet_index,'E51:N51');
end
end