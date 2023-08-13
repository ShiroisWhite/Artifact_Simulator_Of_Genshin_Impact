function draws = calcDrawsForSpecificItem(                  ...
                                        userSet,            ... % 套装，0:任意  1/2: 套装1/2
                                        userPart,           ... % 部位：0:任意  1/2/3/4/5: 花/羽/沙/杯/冠
                                        userMainAttr,       ...
                                        userSubStats,       ...
                                        useResin,           ...
                                        extraDrop,          ...
                                        flowerStatProb,     ...% 主词条概率分布
                                        plumeStatProb,      ...
                                        cupStatProb,        ...
                                        sandsStatProb,      ...
                                        headStatProb,       ...
                                        flowerSubStatProbMap,  ... % 副词条概率分布
                                        plumeSubStatProbMap,   ...
                                        sandsSubStatProbMap,     ...
                                        cupSubStatProbMap,   ...
                                        headSubStatProbMap)
    draws = 0;
    while true
        % 确定圣遗物掉落个数
        num = calcDropNum(extraDrop, useResin);
        for i = 1:num
            % 确定掉落圣遗物套装
            set = calcDropSet();
            % 确定掉落圣遗物套装的某个部位
            part = calcDropPart();
            % 确定掉落圣遗物的主属性
            if part == 1 % 生之花
                mainAttr = calcMainAttr(flowerStatProb, part);
                subStatProbMap = flowerSubStatProbMap.(mainAttr);
            elseif part == 2 % 死之羽 
                mainAttr = calcMainAttr(plumeStatProb, part);
                subStatProbMap = plumeSubStatProbMap.(mainAttr);
            elseif part == 3 % 时之沙
                mainAttr = calcMainAttr(sandsStatProb, part);
                subStatProbMap = sandsSubStatProbMap.(mainAttr);
            elseif part == 4 % 空之杯
                mainAttr = calcMainAttr(cupStatProb, part);
                subStatProbMap = cupSubStatProbMap.(mainAttr);
            elseif part == 5 % 理之冠
                mainAttr = calcMainAttr(headStatProb, part);
                subStatProbMap = headSubStatProbMap.(mainAttr);
            end
            
            % 副词条数量确定
            numSubStats = min(length(userSubStats), rand < 0.8);
            if numSubStats
                numSubStats = 3;
            else
                numSubStats = 4;
            end

            % 副词条属性确定
            subStatProb = subStatProbMap;
%             subStats = datasample((1:length(subStatProb)), numSubStats, 'weights', subStatProb, 'Replace', false);
            subStats = weightedSampleWithoutReplacement(subStatProb, numSubStats);

            % 如果抽取到了用户选定的套装、部位、主属性和副词条属性，结束抽取
            draws = draws + 1;
            userSubStatsFiltered = userSubStats(userSubStats ~= 0);
            if (set == userSet || userSet == 0) && ...         % 抽到用户规定套装，或用户未规定套装
                    (part == userPart || userPart == 0) && ... % 抽到用户规定部位，或用户未规定部位
                    strcmp(mainAttr, userMainAttr) && ...      % 抽到用户规定主词条
                    (all(ismember(userSubStatsFiltered, subStats)) || isempty(userSubStatsFiltered)) % 抽到用户规定副词条或未规定副词条
                disp(['抽取次数: ', num2str(draws),', 套装: ', num2str(set), ...
                      ', 部位: ', num2str(part), ', 主词条: ', mainAttr, ', 副词条: ', num2str(subStats)]);
                return
            end
        end
    end
end