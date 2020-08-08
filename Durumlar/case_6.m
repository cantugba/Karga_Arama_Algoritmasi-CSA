function [bestSolution, bestFitness, iteration]=case_6(fhd, dimension, maxIteration, fNumber)

settings;

pd=dimension; % Problem dimension (number of decision variables)
N=50; % Flock (population) size
AP=0.1; % Awareness probability
fl=2; % Flight length (fl)
lb = lbArray;
ub = ubArray;
[x, l, u]=init(N,pd,lb,ub); % Function for initialization

xn=x;
xnew=zeros(N,pd);
ft=testFunction(xn', fhd, fNumber);

mem=x; % Memory initialization
fit_mem=ft; % Fitness of memory positions

tmax=ceil(maxIteration/N); % Maximum number of iterations (itermax)
for t=1:tmax

    num=ceil(N*rand(1,N)); % Generation of random candidate crows for following (chasing)
    for i=1:N
        if rand>AP
            xnew(i,:)= x(i,:)+fl*rand*(mem(num(i),:)-x(i,:)); % Generation of a new position for crow i (state 1)
        else
            for j=1:pd
                xnew(i,j)=l(j)-(l(j)-u(j))*rand; % Generation of a new position for crow i (state 2)
            end
        end
    end

    xn=xnew;
    for i=1:N
        xn(i,:) = bound(xn(i,:),lb,ub);
    end
    
    ft=testFunction(xn', fhd, fNumber);

    for i=1:N % Update position and memory
        if xnew(i,:)>=l & xnew(i,:)<=u
            x(i,:)=xnew(i,:); % Update position
          
            
            if rand < 0.5               
                if FdbPopArtnDu(mem,fit_mem,i,xnew(i,:),ft(i),tmax,t)
                    mem(i,:)=xnew(i,:); % Update memory
                    fit_mem(i)=ft(i);
                end  
            end
            
          else
             if FdbPopDinamik(mem,fit_mem,i,xnew(i,:),ft(i),tmax,t)
                  mem(i,:)=xnew(i,:); % Update memory
                 fit_mem(i)=ft(i);
            end          

        end
    end
end

ngbest=find(fit_mem== min(fit_mem));
g_best=mem(ngbest(1),:); % Solutin of the problem
bestSolution=g_best;
bestFitness=min(fit_mem);
iteration=t*N;
end

function [x, l, u]=init(N,pd,lowerBand,upperBand) % Function for initialization
    l=lowerBand; u=upperBand; % Lower and upper bounds
    x=zeros(N,pd);
    for i=1:N % Generation of initial solutions (position of crows)
        for j=1:pd
            x(i,j)=l(j)-(l(j)-u(j))*rand; % Position of the crows in the space
        end
    end
end

function a=bound(a,ub,lb)
    a(a>ub)=ub(a>ub); a(a<lb)=lb(a<lb);
end

