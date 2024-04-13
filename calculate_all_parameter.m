%% 将"E:\my_compurer_backup_E\移动硬盘备份\D盘备份\D盘-研究生\步态分析\code\test2.m"中的代码封装到函数中
%除了计算% v5-Max backward position 和 v6-Max forward
%position时计算的是相对于X2（蓝点的相对位置）外，其他的参数都是一个相对值，只要知道3个轴的方向就行，变动marker的位置也没关系（以后要固定X1
%X2 Y1 Y2 即红蓝橙的位置，但y轴的2个点（黄绿）的位置可以变动，只要其代表的是y轴的方向。
%另外，重新校准摄像机对所有参数都无影响
function calculate_all_parameter(xlsx_path, sheet_index,raw_data,start_index,end_index,mid_index,x1,x2,y1,y2,z1,z2,fps,drag_start,drag_end)

%%
%第1步：导入参数矩阵，直接拉到工作区，命名为raw_data
%%
%第2步，每10个步态周期计算1次，输入每个步长的起始帧和结束帧
%start_index:每个步态周期的开始：脚开始接触跑步机---列向量!!!!!!!!!!!!
%mid_index:stance结束，脚完全离开跑步机------列向量!!!!!!!!!!!!!!!!!
%end_index:每个步态周期的结束，脚再次开始接触跑步机-----列向量!!!!!!!!
%%

%%
% %第3步，导入标定的x、y、z方向,先直接将记录的坐标拉到工作区，命名为axis 1:red 2:blue 3 orange 4 green  5 yellow 
% %x方向：猴子前后 x1->x2向后；y方向：猴子左右 y1->y2向左；z方向：猴子上下 z1->z2向上
% x1=mean(axis(1:800,3:5));%红
% x2=mean(axis(1:800,7:9));%蓝
% z1=x2;
% z2=mean(axis(1:800,11:13));%橙
% y1=mean(axis(1:800,15:17));%绿
% y2=mean(axis(1:800,19:21));%黄
% fps=80;%视频帧率为80
%%
%整个代码需要保留的变量：clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%计算Gait timing
% Cycle duration-----------------------------------------------------------v1
% Stance duration----------------------------------------------------------v2
% Relative stance duration (% of cycle duration, Working coefficient)------v3
% Swing duration-----------------------------------------------------------v4
% Relative swing duration (% of cycle duration)----------------------------v5
% Dragging duration--------------------------------------------------------v6
% Relative dragging duration (% of cycle duration)-------------------------v7
% Variability Cycle duration-----------------------------------------------v8
% Variability Stance duration----------------------------------------------v9
% Variability Relative Stance duration-------------------------------------v10
% Variability Swing duration-----------------------------------------------v11
% Variability Relative Swing duration--------------------------------------v12
% Variability Dragging duration--------------------------------------------v13
% Variability Relative Dragging duration-----------------------------------v14
[v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14]=get_gait_timing(start_index,mid_index,end_index,fps,sheet_index,xlsx_path,drag_start,drag_end);
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%计算Endpoint trajectory
% v1-Stride length
% v2-Step length
% v3-Step height
% v4-Trajectory (path) length
% v5-Max backward position
% v6-Max forward position
% v7-Mean velocity
% v8-Max velocity during swing
% v9-Time of Max velocity during swing (% of cycle duration)
% v10-Velocity at beginning forward (swing onset)
% v11-Velocity vector orientation at beginning forward (swing onset)
% v12-Acceleration at beginning forward (swing onset)
% v13-Variability Stride length
% v14-Variability Step length
% v15-Variability Step height
% v16-Variability Trajectory length
% v17-Variability Max backward position
% v18-Variability Max forward position
% v19-Variability Mean velocity
% v20-Variability Max velocity during swing
% v21-Variability Time of Max velocity during swing (% of cycle duration)
% v22-Variability velocity at beginning forward
% v23-Variability velocity vector orientation at beginning forward
% v24-Variability acceleration at beginning forward

for i=1:12
    expr=['[v' num2str(i)  ',v' num2str(i+12) ']' '=' 'get_Endpoint_trajectory(raw_data ,start_index ,mid_index ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%计算Joint angles
% v1-Hip joint extension (max)----直接计算的是整个运动过程中角度的最大值
% v2-Hip joint flexion (min)------直接计算的是整个运动过程中角度的最小值
% v3-Hip joint amplitude (max-min)
% v4-Knee joint extension
% v5-Knee joint flexion
% v6-Knee joint amplitude 
% v7-Ankle joint extension 
% v8-Ankle joint flexion 
% v9-Ankle joint amplitude
for i=1:3
    expr=['[v' num2str((i-1)*3+1)  ',v' num2str((i-1)*3+2) ',v' num2str((i-1)*3+3) ']' '=' 'get_Joint_angles(raw_data ,start_index  ,end_index ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end


%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%calculate Limb oscillations(仰角的变化）
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
for i=1:5
    expr=['[v' num2str((i-1)*3+1)  ',v' num2str((i-1)*3+2) ',v' num2str((i-1)*3+3) ']' '=' 'get_Limb_oscillations(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%计算Angular velocity
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
for i=1:9
    expr=['[v' num2str((i-1)*3+1)  ',v' num2str((i-1)*3+2) ',v' num2str((i-1)*3+3) ']' '=' 'get_Angular_velocity(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
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
for i=1:15
    expr=['[v' num2str((i-1)*3+1)  ',v' num2str((i-1)*3+2) ',v' num2str((i-1)*3+3) ']' '=' 'get_Oscillation_velocity(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path
%%
%stability---------y1,y2的标记点变动了也没关系，因为算的是在这个轴上的投影的变化长度（最大值-最小值），但最好每次固定y1、y2就不动了
% v1-Crest marker oscillations in the anterior-posterior axis
% v2-Crest marker oscillations in the superior-inferior axis
% v3-Crest marker oscillations in the medial-lateral axis
% v4-Hip marker oscillations in the anterior-posterior axis
% v5-Hip marker oscillations in the superior-inferior axis
% v6-Hip marker oscillations in the medial-lateral axis
% v7-Variability Crest marker oscillations in the anterior-posterior axis
% v8-Variability Crest marker oscillations in the superior-inferior axis
% v9-Variability Crest marker oscillations in the medial-lateral axis
% v10-Variability Hip marker oscillations in the anterior-posterior axis
% v11-Variability Hip marker oscillations in the superior-inferior axis
% v12-Variability Hip marker oscillations in the medial-lateral axis
for i=1:2
    expr=['[v' num2str((i-1)*3+1)  ',v' num2str((i-1)*3+2) ',v' num2str((i-1)*3+3)  ',v' num2str((i+1)*3+1)  ',v' num2str((i+1)*3+2)  ',v' num2str((i+1)*3+3) ']' '=' 'get_stability(raw_data ,start_index  ,end_index ,x1 ,x2 ,y1 ,y2 ,z1 ,z2 ,fps, sheet_index ,xlsx_path,i);'];
    eval(expr);
end
%%
clearvars -except raw_data start_index mid_index end_index x1 x2 y1 y2 z1 z2 fps sheet_index xlsx_path

end


