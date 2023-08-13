% 确定掉落圣遗物套装
function set = calcDropSet()
    sets = [1, 2];
    if rand() <= 0.5
        set = sets(1);
    else
        set = sets(2);
    end
end