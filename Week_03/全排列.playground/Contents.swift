/*
 46. 全排列
 给定一个 没有重复 数字的序列，返回其所有可能的全排列。

 示例:

 输入: [1,2,3]
 输出:
 [
   [1,2,3],
   [1,3,2],
   [2,1,3],
   [2,3,1],
   [3,1,2],
   [3,2,1]
 ]
 */

class Solution {
    
    var result: [[Int]] = []
    
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        guard nums.count > 1 else {
            return [nums]
        }
        result.append([nums[0]])
        mute(nums, level: 1)
        return result
    }
    
    func mute(_ nums: [Int], level: Int) {
        guard level < nums.count else { return }
        let num = nums[level]
        var subSets: [[Int]] = []
        for subset in result {
            subSets += createArray(subset, val: num)
        }
        result.removeAll()
        result += subSets
        mute(nums, level: level+1)
    }
    func createArray(_ nums: [Int], val: Int) -> [[Int]] {
        var res: [[Int]] = []
        for (i, _) in nums.enumerated() {
            var temp = nums
//            if i == nums.count - 1 {
//                temp.append(val)
//            } else {
                temp.insert(val, at: i)
//            }
            res.append(temp)
        }
        var temp = nums
        temp.append(val)
        res.append(temp)
        return res
    }
}

Solution().permute([ 4, 2, 3])
