class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p: Int = 0
        var p1: Int = 0
        var p2: Int = 0
        let temp = nums1
        while p1 < m && p2 < n {
            if temp[p1] <= temp[p2] {
                nums1[p] = temp[p1]
                p += 1
                p1 += 1
            } else {
                nums1[p] = nums2[p2]
                p += 1
                p2 += 1
            }
        }
        if p1 < m {
            // nums1.removeLast(m - p1 - 1)
                nums1.append(contentsOf: temp[p1+1...m])
        } else if p2 < n {
            // nums1.removeLast(n - p2 - 1)
            nums1.append(contentsOf: nums2.suffix(n - p2 - 1))
        }
    }

}
