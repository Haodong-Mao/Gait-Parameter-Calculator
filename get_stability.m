%stability
% v1-Crest marker oscillations in the anterior-posterior axis ǰ����
% v2-Crest marker oscillations in the superior-inferior axis ������
% v3-Crest marker oscillations in the medial-lateral axis   �����ᣨ�����ᣩ
% v4-Hip marker oscillations in the anterior-posterior axis
% v5-Hip marker oscillations in the superior-inferior axis
% v6-Hip marker oscillations in the medial-lateral axis
% v7-Variability Crest marker oscillations in the anterior-posterior axis
% v8-Variability Crest marker oscillations in the superior-inferior axis
% v9-Variability Crest marker oscillations in the medial-lateral axis
% v10-Variability Hip marker oscillations in the anterior-posterior axis
% v11-Variability Hip marker oscillations in the superior-inferior axis
% v12-Variability Hip marker oscillations in the medial-lateral axis

function [v1,v2,v3,v4,v5,v6]=get_stability(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,j)
switch j
    case 1%����Crest
        v1=zeros(10,1);
        v2=zeros(10,1);
        v3=zeros(10,1);
        axis_ap=x1-x2;%������ǰ-⨺���ǰ���˶�����
        axis_si=z2-21;%��������
        axis_ml=y1-y2;%��������
        for i=1:10
            crest=raw_data(start_index(i):end_index(i),19:21);
            crest_ap_axis=crest-x2;
            axis_ap_mat=repmat(axis_ap,size(crest,1),1);
            [~ ,proj_length]=get_vector_angle(axis_ap_mat,crest_ap_axis);%ע��˳��[angle ,proj_length]=get_vector_angle(base_vector,project_vector),base_vector��project_vector��˳�򲻿ɵߵ���project_vector��base_vector�ϵ�ͶӰ����
            v1(i)=max(proj_length)-min(proj_length);
            
            crest_si_axis=crest-z2;
            axis_si_mat=repmat(axis_si,size(crest,1),1);
            [~ ,proj_length]=get_vector_angle(axis_si_mat,crest_si_axis);
            v2(i)=max(proj_length)-min(proj_length);
            
            crest_ml_axis=crest-y2;
            axis_ml_mat=repmat(axis_ml,size(crest,1),1);
            [~ ,proj_length]=get_vector_angle(axis_ml_mat,crest_ml_axis);
            v3(i)=max(proj_length)-min(proj_length);
        end
        v4=std(v1)/mean(v1);
        v5=std(v2)/mean(v2);
        v6=std(v3)/mean(v3);
        
        xlswrite(xlsx_path,v1',sheet_index,'E139:N139');
        xlswrite(xlsx_path,v2',sheet_index,'E140:N140');
        xlswrite(xlsx_path,v3',sheet_index,'E141:N141');
        xlswrite(xlsx_path,v4,sheet_index,'E145');
        xlswrite(xlsx_path,v5,sheet_index,'E146');
        xlswrite(xlsx_path,v6,sheet_index,'E147');        
        
        
        
    case 2%����Hip
        v1=zeros(10,1);
        v2=zeros(10,1);
        v3=zeros(10,1);
        axis_ap=x1-x2;%������ǰ-⨺���ǰ���˶�����
        axis_si=z2-21;%��������
        axis_ml=y1-y2;%��������
        for i=1:10
            hip=raw_data(start_index(i):end_index(i),15:17);
            hip_ap_axis=hip-x2;
            axis_ap_mat=repmat(axis_ap,size(hip,1),1);
            [~ ,proj_length]=get_vector_angle(axis_ap_mat,hip_ap_axis);%ע��˳��[angle ,proj_length]=get_vector_angle(base_vector,project_vector),base_vector��project_vector��˳�򲻿ɵߵ���project_vector��base_vector�ϵ�ͶӰ����
            v1(i)=max(proj_length)-min(proj_length);
            
            hip_si_axis=hip-z2;
            axis_si_mat=repmat(axis_si,size(hip,1),1);
            [~ ,proj_length]=get_vector_angle(axis_si_mat,hip_si_axis);
            v2(i)=max(proj_length)-min(proj_length);
            
            hip_ml_axis=hip-y2;
            axis_ml_mat=repmat(axis_ml,size(hip,1),1);
            [~ ,proj_length]=get_vector_angle(axis_ml_mat,hip_ml_axis);
            v3(i)=max(proj_length)-min(proj_length);
        end
        v4=std(v1)/mean(v1);
        v5=std(v2)/mean(v2);
        v6=std(v3)/mean(v3);
        
        xlswrite(xlsx_path,v1',sheet_index,'E142:N142');
        xlswrite(xlsx_path,v2',sheet_index,'E143:N143');
        xlswrite(xlsx_path,v3',sheet_index,'E144:N144');
        xlswrite(xlsx_path,v4,sheet_index,'E148');
        xlswrite(xlsx_path,v5,sheet_index,'E149');
        xlswrite(xlsx_path,v6,sheet_index,'E150');         
        
end
end