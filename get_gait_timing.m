%%%º∆À„Gait timing
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
function [v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14]=get_gait_timing(start_index,mid_index,end_index,fps,sheet_index,xlsx_path,drag_start,drag_end)
v1=(end_index-start_index)./fps;
v2=(mid_index-start_index)./fps;
v3=v2./v1;
v4=(end_index-mid_index)./fps;
v5=v4./v1;
v6=(drag_end-drag_start)./fps;
v7=v6./v1;
v8=std(v1)/mean(v1);
v9=std(v2)/mean(v2);
v10=std(v3)/mean(v3);
v11=std(v4)/mean(v4);
v12=std(v5)/mean(v5);

if mean(v6)==0
    v13=0;
else
    v13=std(v6)/mean(v6);
end

if mean(v7)==0
    v14=0;
else
    v14=std(v7)/mean(v7);
end

xlswrite(xlsx_path,v1',sheet_index,'E1:N1');
xlswrite(xlsx_path,v2',sheet_index,'E2:N2');
xlswrite(xlsx_path,v3',sheet_index,'E3:N3');
xlswrite(xlsx_path,v4',sheet_index,'E4:N4');
xlswrite(xlsx_path,v5',sheet_index,'E5:N5');
xlswrite(xlsx_path,v6',sheet_index,'E6:N6');
xlswrite(xlsx_path,v7',sheet_index,'E7:N7');
xlswrite(xlsx_path,v8',sheet_index,'E8');
xlswrite(xlsx_path,v9',sheet_index,'E9');
xlswrite(xlsx_path,v10',sheet_index,'E10');
xlswrite(xlsx_path,v11',sheet_index,'E11');
xlswrite(xlsx_path,v12',sheet_index,'E12');
xlswrite(xlsx_path,v13',sheet_index,'E13');
xlswrite(xlsx_path,v14',sheet_index,'E14');
end