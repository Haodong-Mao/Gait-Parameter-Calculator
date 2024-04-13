%º∆À„Angular velocity
% v1-Hip joint angular velocity Max
% v2-Hip joint angular velocity Min
% v3-Hip joint angular velocity Amplitude (Max-Min)
% v4-Knee joint angular velocity Max
% v5-Knee joint angular velocity Min
% v6-Knee joint angular velocity Amplitude (Max-Min)
% v7-Ankle joint angular velocity Max
% v8-Ankle joint angular velocity Min
% v9-Ankle joint angular velocity Amplitude (Max-Min)
% v10-Hip joint angular velocity extension Max
% v11-Hip joint angular velocity extension Min
% v12-Hip joint angular velocity extension amplitude (max-min)
% v13-Hip joint angular velocity flexion Max
% v14-Hip joint angular velocity flexion Min
% v15-Hip joint angular velocity flexion amplitude
% v16-Knee joint angular velocity extension Max
% v17-Knee joint angular velocity extension Min
% v18-Knee joint angular velocity extension amplitude
% v19-Knee joint angular velocity flexion Max
% v20-Knee joint angular velocity flexion Min
% v21-Knee joint angular velocity flexion amplitude
% v22-Ankle joint angular velocity extension Max
% v23-Ankle joint angular velocity extension Min
% v24-Ankle joint angular velocity extension amplitude
% v25-Ankle joint angular velocity flexion Max
% v26-Ankle joint angular velocity flexion Min
% v27-Ankle joint angular velocity flexion amplitude
function [v1,v2,v3]=get_Angular_velocity(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,j)
switch j
    case 1
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            hip1=raw_data(start_index(i):end_index(i),19:21);
            hip2=raw_data(start_index(i):end_index(i),15:17);
            hip3=raw_data(start_index(i):end_index(i),11:13);
            hip12=hip1-hip2;
            hip32=hip3-hip2;
            [angle,~]=get_vector_angle(hip12,hip32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            v1(i)=max(angular_vel);
            v2(i)=min(angular_vel);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E67:N67');
        xlswrite(xlsx_path,v2',sheet_index,'E68:N68');
        xlswrite(xlsx_path,v3',sheet_index,'E69:N69');
     case 2
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            knee1=raw_data(start_index(i):end_index(i),15:17);
            knee2=raw_data(start_index(i):end_index(i),11:13);
            knee3=raw_data(start_index(i):end_index(i),7:9);
            knee12=knee1-knee2;
            knee32=knee3-knee2;
            [angle,~]=get_vector_angle(knee12,knee32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            v1(i)=max(angular_vel);
            v2(i)=min(angular_vel);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E70:N70');
        xlswrite(xlsx_path,v2',sheet_index,'E71:N71');
        xlswrite(xlsx_path,v3',sheet_index,'E72:N72');
     case 3
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),11:13);
            ankle2=raw_data(start_index(i):end_index(i),7:9);
            ankle3=raw_data(start_index(i):end_index(i),3:5);
            ankle12=ankle1-ankle2;
            ankle32=ankle3-ankle2;
            [angle,~]=get_vector_angle(ankle12,ankle32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            v1(i)=max(angular_vel);
            v2(i)=min(angular_vel);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E73:N73');
        xlswrite(xlsx_path,v2',sheet_index,'E74:N74');
        xlswrite(xlsx_path,v3',sheet_index,'E75:N75');
    case 4%hip-extension
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            hip1=raw_data(start_index(i):end_index(i),19:21);
            hip2=raw_data(start_index(i):end_index(i),15:17);
            hip3=raw_data(start_index(i):end_index(i),11:13);
            hip12=hip1-hip2;
            hip32=hip3-hip2;
            [angle,~]=get_vector_angle(hip12,hip32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            extension_angular=get_continue_velocity(angular_vel,1,5);
            if isempty(extension_angular)
                extension_angular=0;
            end
            v1(i)=max(extension_angular);
            v2(i)=min(extension_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E76:N76');
        xlswrite(xlsx_path,v2',sheet_index,'E77:N77');
        xlswrite(xlsx_path,v3',sheet_index,'E78:N78');        
    case 5%hip-flexion
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            hip1=raw_data(start_index(i):end_index(i),19:21);
            hip2=raw_data(start_index(i):end_index(i),15:17);
            hip3=raw_data(start_index(i):end_index(i),11:13);
            hip12=hip1-hip2;
            hip32=hip3-hip2;
            [angle,~]=get_vector_angle(hip12,hip32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            flexion_angular=get_continue_velocity(angular_vel,-1,5);
            if isempty(flexion_angular)
                flexion_angular=0;
            end
            v1(i)=max(flexion_angular);
            v2(i)=min(flexion_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E79:N79');
        xlswrite(xlsx_path,v2',sheet_index,'E80:N80');
        xlswrite(xlsx_path,v3',sheet_index,'E81:N81');        
    case 6%knee-extension
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            knee1=raw_data(start_index(i):end_index(i),15:17);
            knee2=raw_data(start_index(i):end_index(i),11:13);
            knee3=raw_data(start_index(i):end_index(i),7:9);
            knee12=knee1-knee2;
            knee32=knee3-knee2;
            [angle,~]=get_vector_angle(knee12,knee32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            extension_angular=get_continue_velocity(angular_vel,1,5);
            if isempty(extension_angular)
                extension_angular=0;
            end
            v1(i)=max(extension_angular);
            v2(i)=min(extension_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E82:N82');
        xlswrite(xlsx_path,v2',sheet_index,'E83:N83');
        xlswrite(xlsx_path,v3',sheet_index,'E84:N84');       
    case 7%knee-flexion
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            knee1=raw_data(start_index(i):end_index(i),15:17);
            knee2=raw_data(start_index(i):end_index(i),11:13);
            knee3=raw_data(start_index(i):end_index(i),7:9);
            knee12=knee1-knee2;
            knee32=knee3-knee2;
            [angle,~]=get_vector_angle(knee12,knee32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            flexion_angular=get_continue_velocity(angular_vel,-1,5);
            if isempty(flexion_angular)
                flexion_angular=0;
            end
            v1(i)=max(flexion_angular);
            v2(i)=min(flexion_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E85:N85');
        xlswrite(xlsx_path,v2',sheet_index,'E86:N86');
        xlswrite(xlsx_path,v3',sheet_index,'E87:N87');        
    case 8%ankle-extension
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),11:13);
            ankle2=raw_data(start_index(i):end_index(i),7:9);
            ankle3=raw_data(start_index(i):end_index(i),3:5);
            ankle12=ankle1-ankle2;
            ankle32=ankle3-ankle2;
            [angle,~]=get_vector_angle(ankle12,ankle32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            extension_angular=get_continue_velocity(angular_vel,1,5);
            if isempty(extension_angular)
                extension_angular=0;
            end
            v1(i)=max(extension_angular);
            v2(i)=min(extension_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E88:N88');
        xlswrite(xlsx_path,v2',sheet_index,'E89:N89');
        xlswrite(xlsx_path,v3',sheet_index,'E90:N90');        
    case 9%ankle-flexion
        v1=zeros(10,1);
        v2=zeros(10,1);
        for i=1:10
            ankle1=raw_data(start_index(i):end_index(i),11:13);
            ankle2=raw_data(start_index(i):end_index(i),7:9);
            ankle3=raw_data(start_index(i):end_index(i),3:5);
            ankle12=ankle1-ankle2;
            ankle32=ankle3-ankle2;
            [angle,~]=get_vector_angle(ankle12,ankle32);
            angle2=(acos(angle).*180)./pi;
            angular_vel=diff(angle2).*fps;
            flexion_angular=get_continue_velocity(angular_vel,-1,5);
            if isempty(flexion_angular)
                flexion_angular=0;
            end
            v1(i)=max(flexion_angular);
            v2(i)=min(flexion_angular);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E91:N91');
        xlswrite(xlsx_path,v2',sheet_index,'E92:N92');
        xlswrite(xlsx_path,v3',sheet_index,'E93:N93');
end
end