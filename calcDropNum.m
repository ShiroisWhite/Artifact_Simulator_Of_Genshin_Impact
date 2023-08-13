% 确定圣遗物掉落个数
function num = calcDropNum(extraDrop, ifUseResin)
    num = 1;
    if rand() <= extraDrop
        num = num + 1;
    end
    if ifUseResin
        num = num * 2;
    end
end