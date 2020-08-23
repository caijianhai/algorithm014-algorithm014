class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        var nums: [Int] = [1]
        var p2: Int = 0
        var p3: Int = 0
        var p5: Int = 0
        var index = 1
        
        if n == 1 {
            return 1
        }
        while index < n {
            let minN = min(nums[p2]*2, min(nums[p3]*3, nums[p5]*5))
            if minN == nums[p2]*2 {
                p2 += 1
            } else if minN == nums[p3]*3 {
                p3 += 1
            } else if minN == nums[p5]*5 {
                p5 += 1
            }
            if nums.last! < minN {
                nums.append(minN)
                index += 1
            }
        }
        return nums[index-1]
    }
}
