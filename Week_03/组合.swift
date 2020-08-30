

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
