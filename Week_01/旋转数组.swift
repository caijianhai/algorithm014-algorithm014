class Solution {
    // func rotate(_ nums: inout [Int], _ k: Int) {
    //     guard k > 0 else { return }
    //     var value = nums.last!
    //     for _ in (0...k-1) {
    //         value = nums.last!
    //         nums.removeLast()
    //         nums.insert(value, at: 0)
    //     }
    // }

        func rotate(_ nums: inout [Int], _ k: Int) {
            let index = k % nums.count
            guard index > 0 else { return }
            let vals = nums.suffix(index)
            nums.removeLast(index)
            nums.insert(contentsOf: vals, at: 0)
    }

}
