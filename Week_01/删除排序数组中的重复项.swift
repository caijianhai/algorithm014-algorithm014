class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var index: Int = 0
        var value = nums[0]
        for i in nums {
            if value < i {
                index += 1
                nums[index] = i
                value = i
            }
        }
        nums.removeLast(nums.count - index - 1 )
        return index + 1
    }
}
