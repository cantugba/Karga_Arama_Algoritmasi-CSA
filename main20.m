paths;


algorithms = {'csa','case_1','case_2','case_3','case_4','case_5','case_6','case_7','case_8','case_9','case_10','case_11','case_12','case_13','case_14','case_15','case_16','case_17','case_18','case_19','case_20','FDB_Pop','FDB_PopArtnDu','FDB_PopDinamik'};
dimension = 30; 
run = 25;
maxIteration = 10000*dimension;
filename = 'result-';

experimentNumber = 1;  functionsNumber = 10;
solution = zeros(experimentNumber, functionsNumber, run);
solutionR = zeros(functionsNumber * experimentNumber, run);
globalMins = [100, 1100, 700, 1900, 1700, 1600, 2100, 2200, 2400, 2500];

cec20so = str2func('cec20_func_so'); 
for ii = 1 : length(algorithms)
    disp(algorithms(ii));
    algorithm = str2func(char(algorithms(ii)));
    for i = 1 : functionsNumber
        disp(i);
        for j = 1 : run
            [~, bestFitness, ~] = algorithm(cec20so, dimension, maxIteration, i);
            solution(1, i, j) = bestFitness - globalMins(i);
            for k = 1 : experimentNumber
                solutionR(k + experimentNumber * (i - 1), j) = solution(k, i, j);
            end
        end
    end
  xlswrite('Sonuclar.xlsx',solutionR,char(algorithms(ii)))
  eD = strcat(func2str(algorithm), '-Bitti ');
  disp(eD);
end