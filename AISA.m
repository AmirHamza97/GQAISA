%% AISA BASED OPTIMIZATION
% Developer: Eþref Boðar, Pamukkale Univ. EEE.
% Supervisor: Selami Beyhan, Izmir Democracy Univ. EEE.
% To cite: Bogar, Esref, and Selami Beyhan. "Adolescent Identity Search Algorithm
% (AISA): A novel metaheuristic approach for solving optimization problems." 
% Applied Soft Computing 95 (2020): 106503.
function [val,best_parameters,cgcurve] = AISA(nPop,maxiter,lb,ub,D,Cost_Function)
%% Initial Parameters
%nPop = 20;              % Population size
%maxiter = 100;          % Iteration number or termination criterion
%D = 2;                  % Dimension of problem
ub =  ub*ones(1,D);      % ub: upper bound
lb = lb*ones(1,D);      % lb: lower bound
%eps = 1e-5;            % Stopping criteria for cost value if needed.

%% Main Loop
for i = 1:nPop
    Candidates(i,:) = rand(1,D).*(ub-lb)+lb;
    canCost(i,:)    = Cost_Function(Candidates(i,:));
end
flag = 0;
it = 1;
%for i = 2:maxiter
while it < maxiter+1
    if flag==0
        [Candidates_LSE] = FeatureExtraction(Candidates,canCost,lb,ub);
    end
    [val,index] = min(canCost);
    flag=1;
    for j=1:nPop
        r1 = rand;
        if r1<=1/3
            x(j,:) = Candidates(j,:)-(rand).*(Candidates(j,:)-Candidates_LSE);
        elseif r1<=2/3 && r1>1/3
            gg = randi(nPop);
            if gg==index
                gg = randi(nPop);
            end
            x(j,:) = Candidates(j,:)-(rand).*(Candidates(gg,:)-Candidates(index,:));
        else
            array = [Candidates(randi(nPop),randi(D))*ones(1,D)];
            x(j,:) = Candidates(j,:)+rand(1,D).*(array(randi(1),:)-Candidates(j,:));
        end
        for k=1:D
            if x(j,k)>ub(k) || x(j,k)<lb(k)
                x(j,k) = lb(k) + rand*(ub(k)-lb(k));
            end
        end
        xcanCost = Cost_Function(x(j,:));
        if xcanCost<canCost(j,:)
            flag = 0;
            Candidates(j,:) = x(j,:);
            canCost(j) = xcanCost;
        end
    end
%% For stopping criteria
%     [val,~]  = min(canCost);
%     if val<eps, break; end
%%
cgcurve(it) = min(canCost);
it = it + 1;
end
%% Optimal Values
[val,~]  = min(canCost);
best_parameters = Candidates(index,:);
end



function [map] = FeatureExtraction(x,y,lb,ub)
xbase = x;
phi = [];
N = 3;
lb = min(lb);
ub = max(ub);
for i = 1:length(x(1,:))
    x(:,i) = 2*(x(:,i)-lb)/(ub-lb)-1;
end
for i = 1:length(x(1,:))
    psi = [];
    phi = [phi,x(:,i),2*x(:,i).^2-1,4*x(:,i).^3-3*x(:,i)];
    psi = [psi,x(:,i),2*x(:,i).^2-1,4*x(:,i).^3-3*x(:,i)];
    phivec{i} = psi;
end
R = phi'*phi;
[TEMP,p] = chol(R);
nu = 1;
while (p~=0)
    R = R + nu*eye(length(R));
    [Temp,p] = chol(R);
    nu = nu*10;
end
Q = (pinv(R))*phi'*y;
y_hat = phi*Q;
[mat,padded] = vec2mat(Q,N);
map = [];
for i = 1:length(x(1,:))
    y_hatnew(i,:) = phivec{i}*mat(i,:)';
    [cost,index]  = sort(y_hatnew(i,:));
    bestindex(i)  = index(1);
    map = [map,xbase(bestindex(i),i)];
end
end