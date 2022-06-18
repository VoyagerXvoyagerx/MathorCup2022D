clf;clear;clc
load("greedy_2.mat")
% 从矩阵中提取基站坐标
% macro = zeros(sum(sum(P)),2)
% micro = zeros(sum(sum(Q)),2)
macro = []
micro = []
cnt = 0;
for i = 1:2500
    for j = 1:2500
        if P(i,j)
            cnt = cnt + 1;
            macro(cnt,:) = [i, j];
           
        end
    end
end
cnt = 0;
for i = 1:2500
    for j = 1:2500
        if Q(i,j)
            cnt = cnt + 1;
            micro(cnt,:) = [i, j];
        end
    end
end

num = length(macro)
theta1 = 360*rand(num,1);
theta2 = theta1 + 100 + 40*rand(num,1);
theta3 = theta2 + 100 + 40*rand(num,1);
num = length(micro)
theta4 = 360*rand(num,1);
theta5 = theta4 + 100 + 40*rand(num,1);
theta6 = theta5 + 100 + 40*rand(num,1);


clf

sqrT = T;
for i = 1 : 2500
    for j = 1 : 2500
        if sqrT(i, j) > 0
            sqrT(i, j) = 1;
        end 
    end
end

h = pcolor(sqrT')   % 画矩阵的伪彩图需要转置，
colormap(cool)
set(h, 'EdgeColor', 'none');
colorbar
hold on 
scatter(macro(:,1), macro(:,2),10,'filled','MarkerFaceColor',[1 0 0])
hold on
% h1 = quiver(macro(:,1), macro(:,2), cosd(theta1),sind(theta1))
% set(h1,'AutoScale','on', 'AutoScaleFactor',0.1)
% hold on
% h2 = quiver(macro(:,1), macro(:,2), cosd(theta2),sind(theta2))
% set(h2,'AutoScale','on', 'AutoScaleFactor',0.1)
% hold on
% h3 = quiver(macro(:,1), macro(:,2), cosd(theta3),sind(theta3))
% set(h3,'AutoScale','on', 'AutoScaleFactor',0.1)
hold on
scatter(micro(:,1), micro(:,2),10,'filled','MarkerFaceColor',[0 1 0])
% h4 = quiver(micro(:,1), micro(:,2), cosd(theta4),sind(theta4))
% set(h4,'AutoScale','on', 'AutoScaleFactor',0.2)
% % h5 = quiver(micro(:,1), micro(:,2), cosd(theta5),sind(theta5))
% set(h5,'AutoScale','on', 'AutoScaleFactor',0.2)
% h6 = quiver(micro(:,1), micro(:,2), cosd(theta6),sind(theta6))
% set(h6,'AutoScale','on', 'AutoScaleFactor',0.2)


hold on
scatter(station(:,2), station(:,3),10,'filled','MarkerFaceColor',[0.5 0.5 0])
legend('业务量', '宏基站','微基站','现有基站')

title('现有基站和弱覆盖点业务量分布图')