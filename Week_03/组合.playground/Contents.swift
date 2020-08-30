/*
 
 77. 组合
 给定两个整数 n 和 k，返回 1 ... n 中所有可能的 k 个数的组合。

 示例:

 输入: n = 4, k = 2
 输出:
 [
   [2,4],
   [3,4],
   [2,3],
   [1,2],
   [1,3],
   [1,4],
 ]

 */

class Solution {
    
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard n > 0 else {
            return []
        }
        if k == 1 {
            return (1...n).map{ [$0] }
        }
        
        var result: [[Int]] = []
        // 只存储前 k-1 个值
        var subSets: [[Int]] = []

        bine(&result, &subSets, num: 1, count: n, k)
        return result
    }
    
    func bine( _ result: inout [[Int]],_ subSets: inout [[Int]], num: Int, count: Int, _ k: Int) {
        guard num <= count else { return }
        var temp: [[Int]] = []

        for subset in subSets {
            var set = subset
            set.append(num)
            if set.count < k {
                temp.append(set)
            } else {
                result.append(set)
            }
        }
        if temp.count > 0 {
            subSets += temp
        }
        subSets.append([num])
        
        bine(&result, &subSets, num: num + 1, count: count, k)
    }
}


print(Solution().combine(3, 2))
