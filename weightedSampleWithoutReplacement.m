% 按权重不放回抽取numSamples个副词条
function sample = weightedSampleWithoutReplacement(weights, numSamples)
    sample = zeros(1, numSamples);
    for i = 1:numSamples
        % 归一化权重
        weights = weights / sum(weights);
        % 生成一个随机数
        r = rand();
        % 找到随机数所在的区间
        for j = 1:length(weights)
            if r < sum(weights(1:j))
                sample(i) = j;
                break;
            end
        end
        % 更新权重，将抽取的元素的权重设为0
        weights(sample(i)) = 0;
    end
end