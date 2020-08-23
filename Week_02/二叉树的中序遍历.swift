class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var res: [Int] = []
        if let l = root.left {
            res += inorderTraversal(l)
        }
        res += [root.val]
        if let r = root.right {
            res += inorderTraversal(r)
        }
        return res
    }
}
