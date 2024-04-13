%Oscillation velocity
% v1-Crest limb oscillation velocity Max
% v2-Crest limb oscillation velocity Min
% v3-Crest limb oscillation velocity Amplitude
% v4-Thigh limb oscillation velocity Max
% v5-Thigh limb oscillation velocity Min
% v6-Thigh limb oscillation velocity Amplitude
% v7-Shank limb oscillation velocity Max
% v8-Shank limb oscillation velocity Min
% v9-Shank limb oscillation velocity Amplitude
% v10-Foot limb oscillation velocity Max
% v11-Foot limb oscillation velocity Min
% v12-Foot limb oscillation velocity Amplitude
% v13-Whole limb oscillation velocity Max
% v14-Whole limb oscillation velocity Min
% v15-Whole limb oscillation velocity Amplitude
% v16-Crest Backward oscillations velocity max
% v17-Crest Backward oscillations velocity min
% v18-Crest Backward oscillations velocity amplitude
% v19-Crest Forward oscillations velocity max
% v20-Crest Forward oscillations velocity min
% v21-Crest Forward oscillations velocity amplitude
% v22-Thigh Backward oscillations velocity max
% v23-Thigh Backward oscillations velocity min
% v24-Thigh Backward oscillations velocity amplitude
% v25-Thigh t Forward oscillations velocity max
% v26-Thigh t Forward oscillations velocity min
% v27-Thigh Forward oscillations velocity amplitude
% v28-Shank Backward oscillations velocity max
% v29-Shank Backward oscillations velocity min
% v30-Shank Backward oscillations velocity amplitude
% v31-Shank Forward oscillations velocity max
% v32-Shank Forward oscillations velocity min
% v33-Shank Forward oscillations velocity amplitude
% v34-Foot Backward oscillations velocity max
% v35-Foot Backward oscillations velocity min
% v36-Foot Backward oscillations velocity amplitude
% v37-Foot Forward oscillations velocity max
% v38-Foot Forward oscillations velocity min
% v39-Foot Forward oscillations velocity amplitude
% v40-Whole limb Backward oscillations velocity max
% v41-Whole limb Backward oscillations velocity min
% v42-Whole limb Backward oscillations velocity amplitude
% v43-Whole limb Forward oscillations velocity max
% v44-Whole limb Forward oscillations velocity min
% v45-Whole limb Forward oscillations velocity amplitude

function [v1,v2,v3]=get_Oscillation_velocity(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,j)
switch j
    case 1%crest
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            crest1=raw_data(start_index(i):end_index(i),19:21);
            crest2=raw_data(start_index(i):end_index(i),15:17);
            crest1_2=crest2-crest1;%方向向下
            z_down_repmat=repmat(z_down,size(crest1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,crest1_2);
            angle_z=(acos(angle_z).*180)./pi;
            vel_angle_z=diff(angle_z).*fps;
            v1(i)=max(vel_angle_z);
            v2(i)=min(vel_angle_z);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E94:N94');
        xlswrite(xlsx_path,v2',sheet_index,'E95:N95');
        xlswrite(xlsx_path,v3',sheet_index,'E96:N96');

    case 2%thigh
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Thigh1=raw_data(start_index(i):end_index(i),15:17);
            Thigh2=raw_data(start_index(i):end_index(i),11:13);
            Thigh1_2=Thigh2-Thigh1;%方向向下
            z_down_repmat=repmat(z_down,size(Thigh1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Thigh1_2);
            angle_z=(acos(angle_z).*180)./pi;
            vel_angle_z=diff(angle_z).*fps;
            v1(i)=max(vel_angle_z);
            v2(i)=min(vel_angle_z);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E97:N97');
        xlswrite(xlsx_path,v2',sheet_index,'E98:N98');
        xlswrite(xlsx_path,v3',sheet_index,'E99:N99');

    case 3%shank
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Shank1=raw_data(start_index(i):end_index(i),11:13);
            Shank2=raw_data(start_index(i):end_index(i),7:9);
            Shank1_2=Shank2-Shank1;%方向向下
            z_down_repmat=repmat(z_down,size(Shank1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Shank1_2);
            angle_z=(acos(angle_z).*180)./pi;
            vel_angle_z=diff(angle_z).*fps;
            v1(i)=max(vel_angle_z);
            v2(i)=min(vel_angle_z);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E100:N100');
        xlswrite(xlsx_path,v2',sheet_index,'E101:N101');
        xlswrite(xlsx_path,v3',sheet_index,'E102:N102');

    case 4%foot
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Foot1=raw_data(start_index(i):end_index(i),7:9);
            Foot2=raw_data(start_index(i):end_index(i),3:5);
            Foot1_2=Foot2-Foot1;%方向向下
            z_down_repmat=repmat(z_down,size(Foot1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Foot1_2);
            angle_z=(acos(angle_z).*180)./pi;
            vel_angle_z=diff(angle_z).*fps;
            v1(i)=max(vel_angle_z);
            v2(i)=min(vel_angle_z);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E103:N103');
        xlswrite(xlsx_path,v2',sheet_index,'E104:N104');
        xlswrite(xlsx_path,v3',sheet_index,'E105:N105');

    case 5%limb
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Limb1=raw_data(start_index(i):end_index(i),19:21);
            Limb2=raw_data(start_index(i):end_index(i),3:5);
            Limb1_2=Limb2-Limb1;%方向向下
            z_down_repmat=repmat(z_down,size(Limb1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Limb1_2);
            angle_z=(acos(angle_z).*180)./pi;
            vel_angle_z=diff(angle_z).*fps;
            v1(i)=max(vel_angle_z);
            v2(i)=min(vel_angle_z);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E106:N106');
        xlswrite(xlsx_path,v2',sheet_index,'E107:N107');
        xlswrite(xlsx_path,v3',sheet_index,'E108:N108');

    case 6%Crest backward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            crest1=raw_data(start_index(i):end_index(i),19:21);
            crest2=raw_data(start_index(i):end_index(i),15:17);
            crest1_2=crest2-crest1;%方向向下
            z_down_repmat=repmat(z_down,size(crest1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,crest1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(crest1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,crest1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_crest_backward=get_forward_backward_oscillation_velocity(angle_z,angle_x,-1,fps);
            v1(i)=max(vel_crest_backward);
            v2(i)=min(vel_crest_backward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E109:N109');
        xlswrite(xlsx_path,v2',sheet_index,'E110:N110');
        xlswrite(xlsx_path,v3',sheet_index,'E111:N111');
        
    case 7%Crest forward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            crest1=raw_data(start_index(i):end_index(i),19:21);
            crest2=raw_data(start_index(i):end_index(i),15:17);
            crest1_2=crest2-crest1;%方向向下
            z_down_repmat=repmat(z_down,size(crest1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,crest1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(crest1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,crest1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_crest_forward=get_forward_backward_oscillation_velocity(angle_z,angle_x,1,fps);
            v1(i)=max(vel_crest_forward);
            v2(i)=min(vel_crest_forward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E112:N112');
        xlswrite(xlsx_path,v2',sheet_index,'E113:N113');
        xlswrite(xlsx_path,v3',sheet_index,'E114:N114');
  
    case 8%Thigh-backward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Thigh1=raw_data(start_index(i):end_index(i),15:17);
            Thigh2=raw_data(start_index(i):end_index(i),11:13);
            Thigh1_2=Thigh2-Thigh1;%方向向下
            z_down_repmat=repmat(z_down,size(Thigh1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Thigh1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Thigh1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Thigh1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_thigh_backward=get_forward_backward_oscillation_velocity(angle_z,angle_x,-1,fps);
            v1(i)=max(vel_thigh_backward);
            v2(i)=min(vel_thigh_backward);
        end
        v3=v1-v2;   
        xlswrite(xlsx_path,v1',sheet_index,'E115:N115');
        xlswrite(xlsx_path,v2',sheet_index,'E116:N116');
        xlswrite(xlsx_path,v3',sheet_index,'E117:N117');
        
    case 9%Thigh-forward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Thigh1=raw_data(start_index(i):end_index(i),15:17);
            Thigh2=raw_data(start_index(i):end_index(i),11:13);
            Thigh1_2=Thigh2-Thigh1;%方向向下
            z_down_repmat=repmat(z_down,size(Thigh1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Thigh1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Thigh1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Thigh1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_thigh_forward=get_forward_backward_oscillation_velocity(angle_z,angle_x,1,fps);
            v1(i)=max(vel_thigh_forward);
            v2(i)=min(vel_thigh_forward);
        end
        v3=v1-v2;    
        xlswrite(xlsx_path,v1',sheet_index,'E118:N118');
        xlswrite(xlsx_path,v2',sheet_index,'E119:N119');
        xlswrite(xlsx_path,v3',sheet_index,'E120:N120');
        
    case 10%Shank-backward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Shank1=raw_data(start_index(i):end_index(i),11:13);
            Shank2=raw_data(start_index(i):end_index(i),7:9);
            Shank1_2=Shank2-Shank1;%方向向下
            z_down_repmat=repmat(z_down,size(Shank1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Shank1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Shank1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Shank1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_shank_backward=get_forward_backward_oscillation_velocity(angle_z,angle_x,-1,fps);
            v1(i)=max(vel_shank_backward);
            v2(i)=min(vel_shank_backward);
        end
        v3=v1-v2;    
        xlswrite(xlsx_path,v1',sheet_index,'E121:N121');
        xlswrite(xlsx_path,v2',sheet_index,'E122:N122');
        xlswrite(xlsx_path,v3',sheet_index,'E123:N123');
        
    case 11%Shank-forward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Shank1=raw_data(start_index(i):end_index(i),11:13);
            Shank2=raw_data(start_index(i):end_index(i),7:9);
            Shank1_2=Shank2-Shank1;%方向向下
            z_down_repmat=repmat(z_down,size(Shank1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Shank1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Shank1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Shank1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_shank_forward=get_forward_backward_oscillation_velocity(angle_z,angle_x,1,fps);
            v1(i)=max(vel_shank_forward);
            v2(i)=min(vel_shank_forward);
        end
        v3=v1-v2;  
        xlswrite(xlsx_path,v1',sheet_index,'E124:N124');
        xlswrite(xlsx_path,v2',sheet_index,'E125:N125');
        xlswrite(xlsx_path,v3',sheet_index,'E126:N126');
        
    case 12%Foot-backward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Foot1=raw_data(start_index(i):end_index(i),7:9);
            Foot2=raw_data(start_index(i):end_index(i),3:5);
            Foot1_2=Foot2-Foot1;%方向向下
            z_down_repmat=repmat(z_down,size(Foot1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Foot1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Foot1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Foot1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_foot_backward=get_forward_backward_oscillation_velocity(angle_z,angle_x,-1,fps);
            v1(i)=max(vel_foot_backward);
            v2(i)=min(vel_foot_backward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E127:N127');
        xlswrite(xlsx_path,v2',sheet_index,'E128:N128');
        xlswrite(xlsx_path,v3',sheet_index,'E129:N129');
        
    case 13%Foot-forward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Foot1=raw_data(start_index(i):end_index(i),7:9);
            Foot2=raw_data(start_index(i):end_index(i),3:5);
            Foot1_2=Foot2-Foot1;%方向向下
            z_down_repmat=repmat(z_down,size(Foot1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Foot1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Foot1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Foot1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_foot_forward=get_forward_backward_oscillation_velocity(angle_z,angle_x,1,fps);
            v1(i)=max(vel_foot_forward);
            v2(i)=min(vel_foot_forward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E130:N130');
        xlswrite(xlsx_path,v2',sheet_index,'E131:N131');
        xlswrite(xlsx_path,v3',sheet_index,'E132:N132');
        
    case 14%Limb-backward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Limb1=raw_data(start_index(i):end_index(i),19:21);
            Limb2=raw_data(start_index(i):end_index(i),3:5);
            Limb1_2=Limb2-Limb1;%方向向下
            z_down_repmat=repmat(z_down,size(Limb1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Limb1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Limb1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Limb1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_limb_backward=get_forward_backward_oscillation_velocity(angle_z,angle_x,-1,fps);
            v1(i)=max(vel_limb_backward);
            v2(i)=min(vel_limb_backward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E133:N133');
        xlswrite(xlsx_path,v2',sheet_index,'E134:N134');
        xlswrite(xlsx_path,v3',sheet_index,'E135:N135');
        
    case 15%Limb-forward
        v1=zeros(10,1);
        v2=zeros(10,1);
        z_down=z1-z2;
        x_forward=x1-x2;
        for i=1:10
            Limb1=raw_data(start_index(i):end_index(i),19:21);
            Limb2=raw_data(start_index(i):end_index(i),3:5);
            Limb1_2=Limb2-Limb1;%方向向下
            z_down_repmat=repmat(z_down,size(Limb1_2,1),1);
            [angle_z,~]=get_vector_angle(z_down_repmat,Limb1_2);
            angle_z=(acos(angle_z).*180)./pi;
            x_forward_repmat=repmat(x_forward,size(Limb1_2,1),1);
            [angle_x,~]=get_vector_angle(x_forward_repmat,Limb1_2);
            angle_x=(acos(angle_x).*180)./pi;
            vel_limb_forward=get_forward_backward_oscillation_velocity(angle_z,angle_x,1,fps);
            v1(i)=max(vel_limb_forward);
            v2(i)=min(vel_limb_forward);
        end
        v3=v1-v2;
        xlswrite(xlsx_path,v1',sheet_index,'E136:N136');
        xlswrite(xlsx_path,v2',sheet_index,'E137:N137');
        xlswrite(xlsx_path,v3',sheet_index,'E138:N138');        
        
end
end