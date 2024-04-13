%计算extension或flexion中的最大最小角速度时，找出extension区间或flexion区间
%输入的angular_vel是整个步态周期的角速度：（后一帧的角度-前一帧的角度）*fps
%一般认为angular_vel大于0就是extension,小于0就是flexion，但是有些时候角速度前一帧变大后一帧又变小，这可能是噪音，也可能是此时不好区分extension或flexion，我们需要找出那种一直变大或一直变小的区间
%flag=1:找extension    flag=-1:找flexion
%number:连续number个角速度是同一符号就是要找的区间
function vel_continue=get_continue_velocity(angular_vel,flag,number)
switch flag
    case 1
        vel_continue=[];
        all_number=length(angular_vel);
        start_index=1;
        end_index=1;
        while end_index<=all_number
            if angular_vel(end_index)>0
                if end_index==all_number&&end_index-start_index+1>=number
                    vel_continue=[vel_continue;angular_vel(start_index:end_index)];
                end
                end_index=end_index+1;
            else
                if end_index-start_index>=number
                    vel_continue=[vel_continue;angular_vel(start_index:end_index-1)];
                end
                start_index=end_index+1;
                end_index=start_index;
            end
        end
        
    case -1
        vel_continue=[];
        all_number=length(angular_vel);
        start_index=1;
        end_index=1;
        while end_index<=all_number
            if angular_vel(end_index)<0
                if end_index==all_number&&end_index-start_index+1>=number
                    vel_continue=[vel_continue;angular_vel(start_index:end_index)];
                end
                end_index=end_index+1;
            else
                if end_index-start_index>=number
                    vel_continue=[vel_continue;angular_vel(start_index:end_index-1)];
                end
                start_index=end_index+1;
                end_index=start_index;
            end
        end
end
end