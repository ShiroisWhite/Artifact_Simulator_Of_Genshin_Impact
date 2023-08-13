# Artifact_Simulator_Of_Genshin_Impact
基于伯努利大数定律，模拟了原神圣遗物抽取的结果，用户可选择输入套装、部位、主词条、副词条来模拟对应圣遗物的抽取次数、所需体力、天数等信息。

UI还在开发中。

使用方法：

运行main.m，在calcDrawsForSpecificItem函数输入前4个参数：

1. 套装（0:任意  1/2: 套装1/2）
2. 部位（0:任意  1/2/3/4/5: 生之花/死之羽/时之沙/空之杯/理之冠）
3. 主词条名称：
```
    生之花主词条 = {'Life'};
   
    死之羽主词条 = {'Attack'};
   
    时之沙主词条 =  {'perccentLife', 'perccentAttack', 'perccentDefense', 'perccentCharge', 'elementMastery'};
   
    空之杯主词条 = {'percentLife', 'percentAttack', 'percentDefense', 'percentPhysicalDamage', ...
   
        'percentAnemoDamage', 'percentCryoDamage', 'percentDendroDamage', 'percentElectroDamage', ...
   
        'percentGeoDamage', 'percentHydroDamage', 'percentPyroDamage', 'elementMastery'};
   
    理之冠主词条 = {'percentLife', 'percentAttack', 'percentDefense', 'percentHealAdv', ...
   
        'percentCrit', 'percentCritDamage', 'elementMastery'};
```
4. 副词条编号，以[x, x, x, x]的形式，不需要选取时填0，需要选取时填入对应序号，且**不能选取和主词条同类型的副词条**：
```
   生之花副词条：1固定攻击  2固定防御    3百分比生命  4百分比攻击    5百分比防御   6充能效率  7元素精通  8暴击率   9暴击伤害
   死之羽副词条：1固定生命  2固定防御力  3百分比生命  4百分比攻击力  5百分比防御力  6充能效率  7元素精通  8暴击率   9暴击伤害
   时之沙副词条：1固定生命  2固定攻击    3固定防御    4百分比攻击    5百分比生命   6百分比防御 7充能效率  8元素精通 9暴击率   10暴击伤害
   空之杯副词条：1固定生命  2固定攻击    3固定防御    4百分比攻击    5百分比生命   6百分比防御 7充能效率  8元素精通 9暴击率   10暴击伤害
   理之冠副词条：1固定生命  2固定攻击    3固定防御    4百分比攻击    5百分比生命   6百分比防御 7充能效率  8元素精通 9暴击率   10暴击伤害
```
5. 是否使用浓缩树脂（false：不使用，true：使用）；建议选false，因为实际刷圣遗物时不可能将所有体力转换成浓缩树脂。先得到非浓缩树脂的次数，再根据自己的习惯换算更好。
