
// by creating a new array
func rotate(_ nums: inout [Int], _ k: Int) {
  var temp = nums
  
  for i in 0 ..< nums.count {
    temp[(i + k) % nums.count] = nums[i]
  }
  
  nums = temp
}

assert(rotate([1,2,3,4,5,6,7], 3)) // [5,6,7,1,2,3,4]
