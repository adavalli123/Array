class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        
        for num in nums {
            dict[num] = (dict[num] == nil) ? 1 : dict[num]! + 1
        }
        
        var count = Int.min
        var max = 0
        
        for (key, val) in dict {
            if count < val {
                count = val
                max = key
            }
        }
        
        return max
    }
    
    func majorityElement(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        return nums[nums.count/2]
    } 
    
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var max = Int.min
        
        for num in nums {
            if count == 0 {
                max = num
            }
            
            // we are resetting the count if num is equal to max
            count += (num == max) ? 1 : -1
        }
        
        return max
    }
}
