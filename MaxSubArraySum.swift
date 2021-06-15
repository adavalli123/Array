class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentMax = nums[0], actualMax = nums[0]
        
        for i in 1 ..< nums.count {
            let num = nums[i]
            currentMax = max(currentMax + num, num)
            actualMax = max(actualMax, currentMax)
        }
        
        return actualMax
    }
}
