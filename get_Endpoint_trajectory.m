%计算Endpoint trajectory
% v1-Stride length-------swing起始时脚趾点坐标与swing终止时脚趾点坐标间的距离
% v2-Step length---------stride+swing的时间*跑步机速度（0.8km/h=2000/9mm/s=222.22mm/s)
% v3-Step height
% v4-Trajectory (path) length
% v5-Max backward position--这个参数没计算，与每次猴站的位置有关！！！！！！！！！！
% v6-Max forward position--这个参数没计算，与每次猴站的位置有关！！！！！！！！！！
% v7-Mean velocity------计算的是整个步态周期的平均速度，包括脚踏在跑步机上的情形
% v8-Max velocity during swing
% v9-Time of Max velocity during swing (% of cycle duration)-----------大于0.95*最大速度的比例
% v10-Velocity at beginning forward (swing onset)
% v11-Velocity vector orientation at beginning forward (swing onset)
% v12-Acceleration at beginning forward (swing onset)
% v13-Variability Stride length
% v14-Variability Step length
% v15-Variability Step height
% v16-Variability Trajectory length
% v17-Variability Max backward position--这个参数没计算，与每次猴站的位置有关！！！！！！！！！！
% v18-Variability Max forward position--这个参数没计算，与每次猴站的位置有关！！！！！！！！！！
% v19-Variability Mean velocity
% v20-Variability Max velocity during swing
% v21-Variability Time of Max velocity during swing (% of cycle duration)
% v22-Variability velocity at beginning forward
% v23-Variability velocity vector orientation at beginning forward
% v24-Variability acceleration at beginning forward


function [v1,v2]=get_Endpoint_trajectory(raw_data ,start_index ,mid_index ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,j)
switch j
    case 1
        stride1=raw_data(mid_index,3:5);
        stride2=raw_data(end_index,3:5);
        v1=sqrt(sum((stride1-stride2).^2,2));
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E15:N15');
        xlswrite(xlsx_path,v2,sheet_index,'E29');

    case 2
        stride1=raw_data(mid_index,3:5);
        stride2=raw_data(end_index,3:5);
        v1=sqrt(sum((stride1-stride2).^2,2));
        treadmill_distance=((end_index-mid_index)./fps).*(2000/9);
        v1=v1+treadmill_distance;
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E16:N16');
        xlswrite(xlsx_path,v2,sheet_index,'E30');
    case 3
        z_up=z2-z1;
        LSh=zeros(10,1);
        for i=1:10
            height_index1=mid_index(i);
            height_index2=end_index(i);
            toe_axis=raw_data(height_index1:height_index2,3:5);
            toe_to_y2=toe_axis-y2;
            z_up_repmat=repmat(z_up,size(toe_axis,1),1);
            vector_dot=sum(toe_to_y2.*z_up_repmat,2);
            vector1_norm=sqrt(sum(toe_to_y2.^2,2));
            vector2_norm=sqrt(sum(z_up_repmat.^2,2));
            cosangle=vector_dot./(vector1_norm.*vector2_norm);
            height=vector1_norm.*cosangle;
            LSh(i)=max(height);
        end
        v1=LSh;
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E17:N17');
        xlswrite(xlsx_path,v2,sheet_index,'E31');
    case 4
        v1=zeros(10,1);
        for i=1:10
            toe_index1=start_index(i);
            toe_index2=end_index(i);
            toe_axis=raw_data(toe_index1:toe_index2,3:5);
            v1(i)=sum(sqrt(sum(diff(toe_axis).^2,2)));
        end
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E18:N18');
        xlswrite(xlsx_path,v2,sheet_index,'E32');
    case 5 %x2的位置不要动，重新校准摄像机也没关系
        v1=zeros(10,1);
        v2=0;
%         x_axis=x1-x2;
%         for i=1:10
%             index1=start_index(i);
%             index2=end_index(i);
%             toe_axis=raw_data(index1:index2,3:5);
%             toe_x2=toe_axis-x2;
%             x_axis_repmat=repmat(x_axis,size(toe_axis,1),1);
%             vector_dot=sum(toe_x2.*x_axis_repmat,2);
%             vector1_norm=sqrt(sum(toe_x2.^2,2));
%             vector2_norm=sqrt(sum(x_axis_repmat.^2,2));
%             cosangle=vector_dot./(vector1_norm.*vector2_norm);
%             x_length=vector1_norm.*cosangle;
%             v1(i)=min(x_length);
%         end
%         v2=std(v1)/mean(v1);
%         xlswrite(xlsx_path,v1',sheet_index,'E19:N19');
%         xlswrite(xlsx_path,v2,sheet_index,'E33');
    case 6
        v1=zeros(10,1);
        v2=0;
%         x_axis=x1-x2;
%         for i=1:10
%             index1=start_index(i);
%             index2=end_index(i);
%             toe_axis=raw_data(index1:index2,3:5);
%             toe_x2=toe_axis-x2;
%             x_axis_repmat=repmat(x_axis,size(toe_axis,1),1);
%             vector_dot=sum(toe_x2.*x_axis_repmat,2);
%             vector1_norm=sqrt(sum(toe_x2.^2,2));
%             vector2_norm=sqrt(sum(x_axis_repmat.^2,2));
%             cosangle=vector_dot./(vector1_norm.*vector2_norm);
%             x_length=vector1_norm.*cosangle;
%             v1(i)=max(x_length);
%         end
%         v2=std(v1)/mean(v1);
%         xlswrite(xlsx_path,v1',sheet_index,'E20:N20');
%         xlswrite(xlsx_path,v2,sheet_index,'E34');
    case 7
        length=zeros(10,1);
        t=zeros(10,1);
        for i=1:10
            toe_index1=start_index(i);
            toe_index2=end_index(i);
            toe_axis=raw_data(toe_index1:toe_index2,3:5);
            length(i)=sum(sqrt(sum(diff(toe_axis).^2,2)));
            t(i)=(toe_index2-toe_index1)/fps;
        end
        v1=length./t;
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E21:N21');
        xlswrite(xlsx_path,v2,sheet_index,'E35');
    case 8
        v1=zeros(10,1);
        for i =1:10
            index2=mid_index(i);
            index3=end_index(i);
            toe_axis=raw_data(index2:index3,3:5);
            length=sqrt(sum(diff(toe_axis).^2,2)).*fps;
            v1(i)=max(length);
        end
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E22:N22');
        xlswrite(xlsx_path,v2,sheet_index,'E36');
    case 9
        v1=zeros(10,1);
        for i =1:10
            index2=mid_index(i);
            index3=end_index(i);
            toe_axis=raw_data(index2:index3,3:5);
            length=sqrt(sum(diff(toe_axis).^2,2)).*fps;
            max_v=max(length);
            num_max=sum(length>0.95*max_v);
            v1(i)=num_max/(index3-index2);
        end
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E23:N23');
        xlswrite(xlsx_path,v2,sheet_index,'E37');
    case 10
        v1=zeros(10,1);
        for i =1:10
            forward_index1=mid_index(i);
            forward_axis=raw_data(forward_index1+1,3:5)-raw_data(forward_index1,3:5);
            v1(i)=sqrt(sum(forward_axis.^2))*80;
        end
        v2=std(v1)/mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E24:N24');
        xlswrite(xlsx_path,v2,sheet_index,'E38');
    case 11
        v1=zeros(10,3);
        x_forward=x1-x2;
        y_forward=y1-y2;
        z_forward=z2-z1;
        for i =1:10
            forward_index1=mid_index(i);
            forward_axis=raw_data(forward_index1+1,3:5)-raw_data(forward_index1,3:5);
            [~,x_length]=get_vector_angle(x_forward,forward_axis);
            [~,y_length]=get_vector_angle(y_forward,forward_axis);
            [~,z_length]=get_vector_angle(z_forward,forward_axis);
            v1(i,:)=[x_length y_length z_length];
        end
        v2=std(v1)./mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E25:N27');
        xlswrite(xlsx_path,v2',sheet_index,'E39:E41');
    case 12
        v1=zeros(10,1);
        for i =1:10
            forward_index1=mid_index(i);
            forward_axis=raw_data(forward_index1+1,3:5)-raw_data(forward_index1,3:5);
            forward_axis_plus1=raw_data(forward_index1+2,3:5)-raw_data(forward_index1+1,3:5);
            v1(i)=sqrt(sum(((80*forward_axis_plus1-80*forward_axis)*80).^2));
        end
        v2=std(v1)./mean(v1);
        xlswrite(xlsx_path,v1',sheet_index,'E28:N28');
        xlswrite(xlsx_path,v2,sheet_index,'E42');
        
end
end