    func moveZeroes(_ nums: inout [Int]) {
        var left = 0, right = nums.count, zeroCounter = 0
        
        while left < right - zeroCounter {
            if nums[left] == 0 {
                zeroCounter += 1
                nums.remove(at: left)
                nums.append(0)
            } else {
                left += 1
            }
        }
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        var slow = 0
        var fast = 0
        
        while slow <= fast, fast < nums.count {
            if nums[fast] != 0 {
                (nums[slow], nums[fast]) = (nums[fast], nums[slow])
                slow += 1
            }
            
            fast += 1
        }
    }
