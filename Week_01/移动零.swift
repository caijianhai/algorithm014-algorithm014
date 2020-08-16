class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIndex = 0
        for (i, index) in nums.enumerated() where index != 0 {
            nums[nonZeroIndex] = index
            nonZeroIndex += 1
        }
        if nonZeroIndex <= nums.count - 1 {
            for i in (nonZeroIndex ... nums.count - 1) {
                nums[i] = 0
            }
        }
    }
}
