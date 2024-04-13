%求2个向量的夹角，并求project_vector在base_vector上的投影长度
function [angle ,proj_length]=get_vector_angle(base_vector,project_vector)
vector_dot=sum(base_vector.*project_vector,2);
vector1_norm=sqrt(sum(project_vector.^2,2));
vector2_norm=sqrt(sum(base_vector.^2,2));
angle=vector_dot./(vector1_norm.*vector2_norm);
proj_length=vector1_norm.*angle;
end