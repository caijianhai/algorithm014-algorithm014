class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var res: [Int] = []
        res += [root.val]
        if let l = root.left {
            res += preorderTraversal(l)
        }
        if let r = root.right {
            res += preorderTraversal(r)
        }
        return res
    }
}
