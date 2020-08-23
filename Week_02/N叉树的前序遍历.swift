
class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        var res: [Int] = []
        res += [root.val]
        for n in root.children {
            res += preorder(n)
        }
        return res
    }
}
