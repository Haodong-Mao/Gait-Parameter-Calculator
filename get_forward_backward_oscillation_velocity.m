%计算forward或backward过程中的oscillation velocity
%angle_z:是与竖直轴的夹角，也就是oscillation 角度，angle_x是与横轴的夹角，用于区分forward还是backward,forward会小于90°，backward会大于90°
%flag=1，计算forward，flag=-1，计算backward,fps是每秒的帧数
%forward和backward可能交替出现，forward-velocity只在forward的区间内计算
%也可能出现整个步态周期全是forward，或全是backward的情况,例如全是forward而没有backward的情形出现，则backward的速度都设为0
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