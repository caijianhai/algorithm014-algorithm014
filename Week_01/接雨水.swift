class Solution {
    func trap(_ height: [Int]) -> Int {
        var data = height
        guard data.count > 1 else { return 0 }
        let first = data[0]
        data.removeFirst()
        
        var maxIndex: (Int, Int, Int) = (0, data[0], 0)
        var sum = 0
        for (i, value) in data.enumerated() {
            // 已经是最大存水量
            if first <= value {
                // 中间的存水量
                let res = first * i - sum
                let leftArray = data.suffix(from: i)
                return res + trap(Array(leftArray))
            } else {
                if maxIndex.1 <= value {
                    maxIndex = (i, value, sum)
                }
                sum += value
            }
        }
        let res = maxIndex.1 * maxIndex.0 - maxIndex.2
        let leftArray = data.suffix(from: maxIndex.0)
        return res + trap(Array(leftArray))
    }
}
