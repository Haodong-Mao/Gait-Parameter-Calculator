%����extension��flexion�е������С���ٶ�ʱ���ҳ�extension�����flexion����
%�����angular_vel��������̬���ڵĽ��ٶȣ�����һ֡�ĽǶ�-ǰһ֡�ĽǶȣ�*fps
%һ����Ϊangular_vel����0����extension,С��0����flexion��������Щʱ����ٶ�ǰһ֡����һ֡�ֱ�С���������������Ҳ�����Ǵ�ʱ��������extension��flexion��������Ҫ�ҳ�����һֱ����һֱ��С������
%flag=1:��extension    flag=-1:��flexion
%number:����number�����ٶ���ͬһ���ž���Ҫ�ҵ�����
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