func reverse(_ nums: inout [Int]) -> [Int] {
    var start = 0, end = nums.count - 1
    while start < end {
        (nums[start], nums[end]) = (nums[end], nums[start])
        start += 1
        end -= 1
    }
    return nums
}

func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
    guard start < end else { return }
    (nums[start], nums[end]) = (nums[end], nums[start])
    reverse(&nums, start+1, end-1)
}

var nums = [1, 2, 3]
reverse(&nums, 0, nums.count-1)
//  reverse(&nums)
print(nums)
