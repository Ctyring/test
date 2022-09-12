-- （2）练习数值计算。
-- 找出一个整数数组中子数组之和的最大值，例如：数组[1, -2, 3, 5, -1]，返回8（因为符合要求的子数组是 [3, 5]）；数组[1, -2, 3, -8, 5, 1]，返回6（因为符合要求的子数组是 [5, 1]）; 数组[1, -2, 3,-2, 5, 1]，返回7（因为符合要求的子数组是 [3, -2, 5, 1]）。
-- 思路：动态规划
-- 1. 从左到右遍历数组，记录当前最大值，如果当前最大值小于0，则丢弃当前最大值，从当前位置开始重新计算最大值
local function maxSubArray(nums)
    local max = nums[1]
    local sum = 0
    for i = 1, #nums do
        if sum < 0 then
            sum = nums[i]
        else
            sum = sum + nums[i]
        end
        if sum > max then
            max = sum
        end
    end
    return max
end

-- 测试
local nums = {1, -2, 3, 5, -1}
print(maxSubArray(nums))
