

class Solution {
// by creating a new array  
  func rotate(_ nums: inout [Int], _ k: Int) {
    var temp = nums
  
    for i in 0 ..< nums.count {
      temp[(i + k) % nums.count] = nums[i]
    }
  
    nums = temp
  }
  
    func rotate(_ nums: inout [Int], _ k: Int) {
        var k = k % nums.count
        reverse(&nums, 0, nums.count-1)
        reverse(&nums, 0, k-1)
        reverse(&nums, k, nums.count-1)
    }
    
    func reverse(_ nums: inout [Int], _ s: Int, _ e: Int) {
        var s = s 
        var e = e 
        while s < e {
            nums.swapAt(s, e)
            s += 1
            e -= 1
        }
    }
}

assert(rotate([1,2,3,4,5,6,7], 3)) // [5,6,7,1,2,3,4]
