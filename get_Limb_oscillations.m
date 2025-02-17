%计算Limb oscillations(仰角的变化）
% v1-Crest Backward oscillations
% v2-Crest Forward oscillations
% v3-Crest oscillations amplitude (backward+forward)
% v4-Thigh Backward oscillations
% v5-Thigh Forward oscillations
% v6-Thigh oscillations amplitude
% v7-Shank Backward oscillations
% v8-Shank Forward oscillations
% v9-Shank oscillations amplitude
% v10-Foot Backward oscillations
% v11-Foot Forward oscillations
% v12-Foot oscillations amplitude
% v13-Whole Limb Backward oscillations
% v14-Whole Limb Forward oscillations
% v15-Whole Limb oscillations amplitude

function [v1,v2,v3]=get_Limb_oscillations(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,j)
switch j
    case 1%Crest
        v1=zeros(10,1);
        v2 =zeros(10,1);
        z_down = z1-z2;
        x_forward = x1-x2;
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
            index_forward= angle_x<=90;
            index_backward= angle_x>90;
            angle_forward=angle_z(index_forward);
            angle_backward=angle_z(index_backward);
            if isempty(angle_forward)
                angle_forward=0;
            end
            if isempty(angle_backward)
                angle_backward=0;
            end
            v1(i)=max(angle_backward);
            v2(i)=max(angle_forward);
        end
        v3=v1+v2;
        xlswrite(xlsx_path,v1',sheet_index,'E52:N52');
        xlswrite(xlsx_path,v2',sheet_index,'E53:N53');
        xlswrite(xlsx_path,v3',sheet_index,'E54:N54');
    case 2%Thigh大腿
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
            index_forward= angle_x<=90;
            index_backward= angle_x>90;
            angle_forward=angle_z(index_forward);
            angle_backward=angle_z(index_backward);
            if isempty(angle_forward)
                angle_forward=0;
            end
            if isempty(angle_backward)
                angle_backward=0;
            end
            v1(i)=max(angle_backward);
            v2(i)=max(angle_forward);
        end
        v3=v1+v2;   
        xlswrite(xlsx_path,v1',sheet_index,'E55:N55');
        xlswrite(xlsx_path,v2',sheet_index,'E56:N56');
        xlswrite(xlsx_path,v3',sheet_index,'E57:N57');       
    case 3%Shank小腿
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
            index_forward= angle_x<=90;
            index_backward= angle_x>90;
            angle_forward=angle_z(index_forward);
            angle_backward=angle_z(index_backward);
            if isempty(angle_forward)
                angle_forward=0;
            end
            if isempty(angle_backward)
                angle_backward=0;
            end
            v1(i)=max(angle_backward);
            v2(i)=max(angle_forward);
        end
        v3=v1+v2; 
        xlswrite(xlsx_path,v1',sheet_index,'E58:N58');
        xlswrite(xlsx_path,v2',sheet_index,'E59:N59');
        xlswrite(xlsx_path,v3',sheet_index,'E60:N60');        
    case 4%Foot小腿
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
            index_forward= angle_x<=90;
            index_backward= angle_x>90;
            angle_forward=angle_z(index_forward);
            angle_backward=angle_z(index_backward);
            if isempty(angle_forward)
                angle_forward=0;
            end
            if isempty(angle_backward)
                angle_backward=0;
            end
            v1(i)=max(angle_backward);
            v2(i)=max(angle_forward);
        end
        v3=v1+v2; 
        xlswrite(xlsx_path,v1',sheet_index,'E61:N61');
        xlswrite(xlsx_path,v2',sheet_index,'E62:N62');
        xlswrite(xlsx_path,v3',sheet_index,'E63:N63');
    case 5%Limb小腿
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
            index_forward= angle_x<=90;
            index_backward= angle_x>90;
            angle_forward=angle_z(index_forward);
            angle_backward=angle_z(index_backward);
            if isempty(angle_forward)
                angle_forward=0;
            end
            if isempty(angle_backward)
                angle_backward=0;
            end
            v1(i)=max(angle_backward);
            v2(i)=max(angle_forward);
        end
        v3=v1+v2; 
        xlswrite(xlsx_path,v1',sheet_index,'E64:N64');
        xlswrite(xlsx_path,v2',sheet_index,'E65:N65');
        xlswrite(xlsx_path,v3',sheet_index,'E66:N66');        
end