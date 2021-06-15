class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
    
        func binarySearch(_ nums: [Int], target: Int, low: Int, high: Int) -> Int {
            if low > high { return -1 }
        
            let mid = low + (high - low) / 2

            if nums[mid] < target {
                return binarySearch(nums, target: target, low: mid + 1, high: high)
            }
        
            else if nums[mid] > target {
                return binarySearch(nums, target: target, low: low, high: mid - 1)
            }
        
            else {
                return mid
            }
        }
    
        return binarySearch(nums, target: target, low: 0, high: nums.count - 1)
    } 
    
    func search(_ nums: [Int], _ target: Int) -> Int { 
        var left = 0, right = nums.count - 1, pivot = 0
        
        while left <= right {
            pivot = left + (right - left) / 2
            if nums[pivot] == target { return pivot }
            else if nums[pivot] < target { left = pivot + 1 }
            else { right = pivot - 1 }
        }
        
        return -1
    } 
}
