%% 生之花概率分布(主词条固定) %%
flowerStatProb = 1;

% 生之花副词条概率分布
           % 副词条：1固定攻击 2固定防御 3百分比生命 4百分比攻击 5百分比防御 6充能效率 7元素精通 8暴击率 9暴击伤害 
flowerSubStatProb = [0.1579   0.1579   0.1053      0.1053     0.1053      0.1053   0.1053  0.0789  0.0789];

flowerSubStatProbMap = struct();
flowerSubStatProbMap.Life = flowerSubStatProb(1, :);

%% 死之羽概率分布(主词条固定) %%
plumeStatProb = 1;

% 死之羽 副词条概率分布
           % 副词条：1固定生命  2固定防御力  3百分比生命  4百分比攻击力  5百分比防御力  6充能效率  7元素精通  8暴击率 9暴击伤害
plumeSubStatProb = [0.1579     0.1579       0.1053      0.1053        0.1053        0.1053     0.1053    0.0789  0.0789];

plumeSubStatProbMap = struct();
plumeSubStatProbMap.Attack = plumeSubStatProb(1, :);

%% 时之沙概率分布 %%
sandsStatProb = [0.2668 % 1 百分比生命
0.2666                  % 2 百分比攻击力
0.2666                  % 3 百分比防御力
0.1                     % 4 充能效率
0.1                     % 5 元素精通
];

% 时之沙 副词条概率分布
          % 副词条：1固定生命 2固定攻击 3固定防御 4百分比攻击 5百分比生命 6百分比防御 7充能效率 8元素精通 9暴击率 10暴击伤害
sandsSubStatProb = [0.15	 0.15	  0.15	    0.1	       0	       0.1	      0.1	   0.1	     0.075	 0.075   % 主词条为百分比生命
                    0.15	 0.15	  0.15	    0	       0.1	       0.1	      0.1	   0.1	     0.075	 0.075   % 主词条为百分比攻击
                    0.15	 0.15	  0.15	    0.1	       0.1	       0	      0.1	   0.1	     0.075	 0.075   % 主词条为百分比防御
                    0.15	 0.15	  0.15	    0.1	       0.1	       0.1	      0.0000   0.1	     0.075	 0.075   % 主词条为充能效率
                    0.15	 0.15	  0.15	    0.1	       0.1	       0.1	      0.1	   0	     0.075	 0.075]; % 主词条为元素精通

% 创建主词条到副词条概率分布的映射
sandsSubStatProbMap = struct();
sandsSubStatProbMap.perccentLife = sandsSubStatProb(1, :);
sandsSubStatProbMap.perccentAttack = sandsSubStatProb(2, :);
sandsSubStatProbMap.perccentDefense = sandsSubStatProb(3, :);
sandsSubStatProbMap.perccentCharge = sandsSubStatProb(4, :);
sandsSubStatProbMap.elementMastery = sandsSubStatProb(5, :);

%% 空之杯主副词条概率分布 %%
% 空之杯主词条概率分布
cupStatProb = [0.1925 % 1 百分比生命
0.1925                % 2 百分比攻击力
0.1925                % 3 百分比防御力
0.05                  % 4 百分比物伤
0.05                  % 5 百分比风伤
0.05                  % 6 百分比冰伤
0.05                  % 7 百分比草伤
0.05                  % 8 百分比雷伤
0.05                  % 9 百分比岩伤
0.05                  % 10 百分比水伤
0.05                  % 11 百分比火伤
0.025                 % 12 元素精通
];
% 空之杯 副词条概率分布
          % 副词条：1固定生命 2固定攻击 3固定防御 4百分比攻击 5百分比生命 6百分比防御 7充能效率 8元素精通 9暴击率 10暴击伤害
cupSubStatProb = [  0.15	 0.15	   0.15	    0.1	       0	       0.1	      0.1	   0.1	     0.075	 0.075   % 1主词条为百分比生命
                    0.15	 0.15	   0.15	    0	       0.1	       0.1	      0.1	   0.1	     0.075	 0.075   % 2主词条为百分比攻击
                    0.15	 0.15	   0.15	    0.1	       0.1	       0	      0.1	   0.1	     0.075	 0.075   % 3主词条为百分比防御
                    0.1364	 0.1364	   0.1364   0.0909	   0.0909	   0.0909	  0.0909   0.0909	 0.0682  0.0682  % 4主词条为百分比属性伤
                    0.15	 0.15	   0.15	    0.1	       0.1	       0.1	      0.1	   0	     0.075	 0.075]; % 5主词条为元素精通
% 创建主词条到副词条概率分布的映射
cupSubStatProbMap = struct();
cupSubStatProbMap.percentLife = cupSubStatProb(1, :);
cupSubStatProbMap.percentAttack = cupSubStatProb(2, :);
cupSubStatProbMap.percentDefense = cupSubStatProb(3, :);
cupSubStatProbMap.percentPhysicalDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentAnemoDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentCryoDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentDendroDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentElectroDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentGeoDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentHydroDamage = cupSubStatProb(4, :);
cupSubStatProbMap.percentPyroDamage = cupSubStatProb(4, :);
cupSubStatProbMap.elementMastery = cupSubStatProb(5, :);
                
%% 理之冠概率 %%
headStatProb = [0.22 % 1 百分比生命
0.22                 % 2 百分比攻击力
0.22                 % 3 百分比防御力
0.1                  % 4 治疗加成
0.1                  % 5 暴击率
0.1                  % 6 暴击伤害
0.04                 % 7 元素精通
];
% 理之冠 副词条概率分布
           % 副词条：1固定生命 2固定攻击 3固定防御 4百分比攻击 5百分比生命 6百分比防御 7充能效率 8元素精通 9暴击率 10暴击伤害
headSubStatProb = [  0.15	   0.15	    0.15	  0.1	      0	         0.1	   0.1	    0.1	      0.075	  0.075   % 主词条为百分比生命
                     0.15	   0.15	    0.15	  0	          0.1	     0.1	   0.1	    0.1	      0.075	  0.075   % 主词条为百分比攻击
                     0.15	   0.15	    0.15	  0.1	      0.1	     0	       0.1	    0.1	      0.075	  0.075   % 主词条为百分比防御
                     0.1463    0.1463   0.1463    0.0976	  0.0976	 0.0976	   0.0976	0.0976    0	      0.0732  % 主词条为治疗加成
                     0.1463    0.1463   0.1463    0.0976	  0.0976	 0.0976	   0.0976	0.0976    0.0732  0       % 主词条为暴击率
                     0.1364    0.1364   0.1364    0.0909	  0.0909	 0.0909	   0.0909	0.0909    0.0682  0.0682  % 主词条为暴击伤害
                     0.15	   0.15	    0.15	  0.1	      0.1	     0.1	   0.1	    0	      0.075	  0.075]; % 主词条为元素精通

% 创建主词条到副词条概率分布的映射                 
headSubStatProbMap = struct();
headSubStatProbMap.percentLife = headSubStatProb(1, :);
headSubStatProbMap.percentAttack = headSubStatProb(2, :);
headSubStatProbMap.percentDefense = headSubStatProb(3, :);
headSubStatProbMap.percentHealAdv = headSubStatProb(4, :);
headSubStatProbMap.percentCrit = headSubStatProb(5, :);
headSubStatProbMap.percentCritDamage = headSubStatProb(6, :);
headSubStatProbMap.elementMastery = headSubStatProb(7, :);


%% 额外掉落概率 %%
extraDrop = 0.07;

%% 各部位掉落的概率%%
partProb = 0.2;

%% 调用函数 %%
tic;
numTrials = 1000;
draws = zeros(1, numTrials);


% 参数3：主属性
% 参数4：是否使用树脂
% 参数5：
parfor i =  1:numTrials
    draws(i) = calcDrawsForSpecificItem(1, ...  % 套装，0:任意  1/2: 套装1/2
                                        4, ...  % 部位：0:任意  1/2/3/4/5: 花/羽/沙/杯/冠
                                        'percentPhysicalDamage', ... % 主词条名称
                                        [9, 10, 0, 0], ... % 副词条对应序号
                                        false, ... 
                                        extraDrop,  ...
                                        flowerStatProb,  ...
                                        plumeStatProb,  ...
                                        cupStatProb,  ...
                                        sandsStatProb,  ...
                                        headStatProb, ...
                                        flowerSubStatProbMap,  ...
                                        plumeSubStatProbMap,   ...
                                        sandsSubStatProbMap,     ...
                                        cupSubStatProbMap,   ...
                                        headSubStatProbMap);
end
toc;

expectedDraws = mean(draws)
expectedStrength = 20 * expectedDraws
expectedDays = expectedStrength / 180

%% 绘制抽取结果的散点图 %%
figure;
scatter(1:numTrials, draws, 1, 'MarkerFaceAlpha', 0.1, 'MarkerEdgeAlpha', 0.2);
hold on; 
line([1, numTrials], [expectedDraws, expectedDraws], 'Color', 'red'); 
text(numTrials, expectedDraws, sprintf('%f', expectedDraws), 'VerticalAlignment', 'top');
title('抽取结果的分布');
xlabel('模拟次数');
ylabel('抽取次数');
legend('抽取次数', '平均抽数');