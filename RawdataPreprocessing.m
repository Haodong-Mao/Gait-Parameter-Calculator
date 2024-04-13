function [Lrawdata,Rrawdata]=RawdataPreprocessing(temp_data)

leftdata=temp_data(:,[1,2,4:6,15:17,26:28,37:39,48:50]);
rightdata=temp_data(:,[1,2,59:61,70:72,81:83,92:94,103:105]);
leftflag=ones(size(leftdata,1),5);
rightflag=ones(size(rightdata,1),5);

for i=1:size(leftdata,1)
    for j=1:5
        temp_left=leftdata(i,3*j:3*j+2);
        temp_right=rightdata(i,3*j:3*j+2);
        if numel(find(isnan(temp_left)))>0
            leftflag(i,j)=0;
        end
        if numel(find(isnan(temp_right)))>0
            rightflag(i,j)=0;
        end
    end
end

Lrawdata=leftdata(:,1:2);
Rrawdata=rightdata(:,1:2);
for i=1:5
    Lrawdata=[Lrawdata leftdata(:,3*i:3*i+2) leftflag(:,i)];
    Rrawdata=[Rrawdata rightdata(:,3*i:3*i+2) rightflag(:,i)];
end

for i=2:size(Lrawdata,1)-1
    for j=1:5
        templflag_f1=Lrawdata(i-1,4*j+2);
        templflag=Lrawdata(i,4*j+2);
        templflag_z1=Lrawdata(i+1,4*j+2);
        
        temprflag_f1=Rrawdata(i-1,4*j+2);
        temprflag=Rrawdata(i,4*j+2);
        temprflag_z1=Rrawdata(i+1,4*j+2);
        
        if templflag==0 && templflag_f1>0 && templflag_z1>0
            Lrawdata(i,4*j-1:4*j+1)= ( Lrawdata(i-1,4*j-1:4*j+1) + Lrawdata(i+1,4*j-1:4*j+1))./2;
            Lrawdata(i,4*j+2)=1;
        end
        
        if temprflag==0 && temprflag_f1>0 && temprflag_z1>0
            Rrawdata(i,4*j-1:4*j+1) = ( Rrawdata(i-1,4*j-1:4*j+1) + Rrawdata(i+1,4*j-1:4*j+1))./2;
            Rrawdata(i,4*j+2)=1;
        end
        
    end
end
end