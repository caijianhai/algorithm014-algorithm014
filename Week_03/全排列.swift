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
