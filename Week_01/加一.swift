class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        guard digits.count != 0 else { return [1] }
        let last = digits.last!
        // 开始递归
        if last == 9 {
            return plusOne(Array(digits.prefix(upTo: digits.count - 1))) + [0]
        } else {
            return Array(digits.prefix(upTo: digits.count - 1)) + [last + 1]
        }
    }
}
