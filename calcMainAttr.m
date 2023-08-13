% 确定圣遗物的主词条
function mainAttrName = calcMainAttr(statProb, part)
    mainAttr = find(rand() < cumsum(statProb), 1);
    
    mainFlowerAttrNames = {'Life'};
    mainPlumeAttrNames = {'Attack'};
    mainSandsAttrNames =  {'perccentLife', 'perccentAttack', 'perccentDefense', 'perccentCharge', 'elementMastery'};
    mainCupAttrNames = {'percentLife', 'percentAttack', 'percentDefense', 'percentPhysicalDamage', ...
        'percentAnemoDamage', 'percentCryoDamage', 'percentDendroDamage', 'percentElectroDamage', ...
        'percentGeoDamage', 'percentHydroDamage', 'percentPyroDamage', 'elementMastery'};
    mainHeadAttrNames = {'percentLife', 'percentAttack', 'percentDefense', 'percentHealAdv', ...
        'percentCrit', 'percentCritDamage', 'elementMastery'};
    
    if part == 1 % 生之花
        mainAttrName = mainFlowerAttrNames{mainAttr};
    elseif part == 2 % 死之羽 
        mainAttrName = mainPlumeAttrNames{mainAttr};
    elseif part == 3 % 时之沙
        mainAttrName = mainSandsAttrNames{mainAttr};
    elseif part == 4 % 空之杯
        mainAttrName = mainCupAttrNames{mainAttr};
    elseif part == 5 % 理之冠
        mainAttrName = mainHeadAttrNames{mainAttr};
    end
end