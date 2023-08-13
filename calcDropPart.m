% 确定掉落圣遗物套装的某个部位
function part = calcDropPart()
    parts = [1, 2, 3, 4, 5];
    part = parts(randi([1, 5]));
end