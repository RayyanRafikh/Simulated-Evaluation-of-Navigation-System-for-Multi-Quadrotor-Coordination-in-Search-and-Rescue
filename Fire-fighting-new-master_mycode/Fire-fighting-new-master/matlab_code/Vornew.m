n=5;
crs = [0,0;0,100;100,100;100,0];
%numIterations = 100;
showPlot = true;
r_sen = 0.5;   %sensor range

Px = 0.5*rand([n,1]);
Py = 0.5*rand([n,1]);

xrange = max(crs(:,1));
yrange = max(crs(:,2));
thresh = 2; %max distance threshold for each cycle to end

%Dividing the area into discrete cells and expressing range in terms of the
%map
X1 = max(max(crs))/100;
r_sen = r_sen/X1;
Z = ones(100,100);%Uncertainity Distribution
val2 = Z;
cycle=1;
Kprop = 0.5; %Proportionality constant

%%%%%%%%%%%%%%%%%%%%%%%% VISUALIZATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if showPlot
    verCellHandle = zeros(n,1);
    cellColors = ones(n,3);
    for i = 1:numel(Px) % color according to
        verCellHandle(i)  = patch(Px(i),Py(i),cellColors(i,:)); % use color i  -- no robot assigned yet
        hold on
    end
    pathHandle = zeros(n,1);
    %numHandle = zeros(n,1);
    for i = 1:numel(Px) % color according to
        pathHandle(i)  = plot(Px(i),Py(i),'-','color',cellColors(i,:)*.8);
        %    numHandle(i) = text(Px(i),Py(i),num2str(i));
    end
    goalHandle = plot(Px,Py,'+','linewidth',2);
    currHandle = plot(Px,Py,'o','linewidth',2);
    titleHandle = title(['o = Robots, + = Goals, Iteration ', num2str(0)]);
end

figure
surf (Z);
set(surf(Z),'LineStyle','none');
%%%%%%%%%%%%%%%%%%%%%%%% END VISUALIZATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dist = xrange*ones(n,1);
%Starting the loop for search
while max(max(Z))>0.1
    figure(1)
    counter = 0;
    while max(dist)>thresh
        tic;
        counter = counter+1;
        [v,c]=VoronoiBounded(Px,Py, crs);
        
        if showPlot
            set(currHandle,'XData',Px,'YData',Py);%plot current position
            for i = 1:numel(Px) % color according to
                xD = [get(pathHandle(i),'XData'),Px(i)];
                yD = [get(pathHandle(i),'YData'),Py(i)];
                set(pathHandle(i),'XData',xD,'YData',yD);%plot path position
                %       set(numHandle(i),'Position',[ Px(i),Py(i)]);
            end
        end
        
        for i = 1:numel(c) %calculate the centroid of each cell
            BW = roipoly(Z,1*v(c{i},1),1*v(c{i},2));
            GI = mat2gray(BW);
            for m=1:100
                for j=1:100
                    GI(j,m) = GI(j,m)*val2(j,m);
                end
            end
            s = regionprops(BW, GI, {'WeightedCentroid'});
            cx = s.WeightedCentroid(1,1)/100;
            cy = s.WeightedCentroid(1,2)/100;
            cx = min(xrange,max(0, cx));
            cy = min(yrange,max(0, cy));
            if ~isnan(cx) && inpolygon(cx,cy,crs(:,1),crs(:,2))
                Px(i) = Px(i) + Kprop*(cx - Px(i));  %don't update if goal is outside the polygon
                Py(i) = Py(i) + Kprop*(cy - Py(i));
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                gtx = Px(i)*5;
                gty = Py(i)*5;
                M2 = [gtx gty i]
                %writematrix(M2,'gama.csv','WriteMode','append')
                dist(i) = sqrt((cx - Px(i))^2 + (cy - Py(i))^2);
            end
        end
        
        if showPlot
            for i = 1:numel(c) % update Voronoi cells
                set(verCellHandle(i), 'XData',v(c{i},1),'YData',v(c{i},2));
            end
            
            set(titleHandle,'string',['o = Robots, + = Goals, Cycle', num2str(cycle,'%3d'), ', Iteration', num2str(counter,'%3d')]);
            set(goalHandle,'XData',Px,'YData',Py);%plot goal position
            axis equal
            axis([0,xrange,0,yrange]);
            drawnow
        end
        time(counter,cycle) = toc;
    end
    val = Z;
    for i = 1:n
        BW = roipoly(Z,1*v(c{i},1),1*v(c{i},2));
        GI = mat2gray(BW);
        s = regionprops(BW, GI, {'Centroid','WeightedCentroid'});
        for m=1:100
            for j=1:100
                vx = s.WeightedCentroid(1,1);
                vy = s.WeightedCentroid(1,2);
                dist = sqrt(((m+0.5)-vx)^2+((j+0.5)-vy)^2)/1;
                if dist < r_sen
                    val(j,m) = min(val(j,m),(1-0.8708+0.074*dist^2));
                end
            end
        end
    end
    for m=1:100
        for j=1:100
            Z(j,m) = Z(j,m)*val(j,m);
            val2(j,m) = 2*Z(j,m)*0.074;
        end
    end
    max_d(cycle)= max(max(Z));
    average(cycle) = mean2(Z);
    cycle=cycle+1;
    figure(2);
    surf (Z);
    set(surf(Z),'LineStyle','none');
    hcb = colorbar;
    colorTitleHandle = get(hcb,'Title');
    titleString = 'Uncertainty Density';
    set(colorTitleHandle ,'String',titleString);
    pause(10)
end