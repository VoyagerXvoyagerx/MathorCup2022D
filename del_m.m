% SA 模拟退火: 求解函数y = 11*sin(x) + 7*cos(5*x)在[-3,3]内的最大值(动画演示）
% T 弱覆盖点业务量矩阵
% E 已建基站
% P 宏基站矩阵
% Q 微基站矩阵
tic
clear; clc;clf
global T    
global E   
global P   
global Q

load("greedy_2.mat")

rate_calc()
num = 1;
res = zeros(1, 3);

for x = 1 : 2500
    x
    for y = 1 : 2500
        score = -1;
        
        if P(x, y) == 1
           score = score_calc(x, y, 30, 10);
           res(num, 1) = x;
           res(num, 2) = y;
           res(num, 3) = score;
           
           num = num + 1;
        elseif Q(x, y) == 1
           score = score_calc(x, y, 10, 1);
           res(num, 1) = x;
           res(num, 2) = y;
           res(num, 3) = score;
           
           num = num + 1;
        end
        
        if score == 0
            x
            y
            
            P(x, y) = 0;
            Q(x, y) = 0;
            
            rate_calc()
        end
    end
end

function rate = rate_calc()
    global T    
    global P   
    global Q
    
    A = expand(P,30) | expand(Q,10);    % 业务覆盖矩阵
    rate = sum(sum(A.*T)) / sum(sum(T));                % 计算目标函数
end

function score = score_calc(x, y, exp, cost) 
    global T    
    global P   
    global Q
    global dest
   
    dest = zeros(2500, 2500);
    dest(x, y) = 1;
    
    A = expand(P - dest, 30) | expand(Q - dest, 10); 
    
    dest = expand(dest, exp);
    
    dest = dest - (dest &A);
        
    score = sum(sum(dest .* T)) / cost;
end
