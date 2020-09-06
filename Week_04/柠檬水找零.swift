


class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        
        var int5 = 0
        var int10 = 0
//        var int20 = 0
        
        for bill in bills {
            if bill == 5 {
                int5 += 1
            }
            else if bill == 10 {
                guard int5 > 0 else { return false }
                int5 -= 1
                int10 += 1
            }
            else if bill == 20 {
                if int10 > 0 {
                    guard int5 > 0 else { return false }
                    int10 -= 1
                    int5 -= 1
                } else {
                    guard int5 >= 3 else { return false }
                    int5 -= 3
                }
            }
        }
        return true
    }
}
