

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        guard prices.count > 1 else { return 0 }
    
        for index in (1 ..< prices.count) {
            if prices[index] > prices[index - 1] {
                result += prices[index] - prices[index - 1]
            }
        }
        return result
    }
}

