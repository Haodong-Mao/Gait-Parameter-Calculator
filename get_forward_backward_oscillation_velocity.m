%����forward��backward�����е�oscillation velocity
%angle_z:������ֱ��ļнǣ�Ҳ����oscillation �Ƕȣ�angle_x�������ļнǣ���������forward����backward,forward��С��90�㣬backward�����90��
%flag=1������forward��flag=-1������backward,fps��ÿ���֡��
%forward��backward���ܽ�����֣�forward-velocityֻ��forward�������ڼ���
%Ҳ���ܳ���������̬����ȫ��forward����ȫ��backward�����,����ȫ��forward��û��backward�����γ��֣���backward���ٶȶ���Ϊ0
function vel=get_forward_backward_oscillation_velocity(angle_z,angle_x,flag,fps)
switch flag
    case 1%forward
        index1=find(angle_x<90);
        new_angle_z=angle_z(angle_x<90);
        vel=[];
        for i=2:length(new_angle_z)
            if index1(i)~=index1(i-1)+1
                continue
            end
            vel1=(new_angle_z(i)-new_angle_z(i-1))*fps;
            vel=[vel;vel1];
        end
        if isempty(vel)
            vel=0;
        end

    case -1%backward
        index1=find(angle_x>90);
        new_angle_z=angle_z(angle_x>90);
        vel=[];
        for i=2:length(new_angle_z)
            if index1(i)~=index1(i-1)+1
                continue
            end
            vel1=(new_angle_z(i)-new_angle_z(i-1))*fps;
            vel=[vel;vel1];
        end
        if isempty(vel)
            vel=0;
        end
end
end