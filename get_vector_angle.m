%��2�������ļнǣ�����project_vector��base_vector�ϵ�ͶӰ����
function [angle ,proj_length]=get_vector_angle(base_vector,project_vector)
vector_dot=sum(base_vector.*project_vector,2);
vector1_norm=sqrt(sum(project_vector.^2,2));
vector2_norm=sqrt(sum(base_vector.^2,2));
angle=vector_dot./(vector1_norm.*vector2_norm);
proj_length=vector1_norm.*angle;
end