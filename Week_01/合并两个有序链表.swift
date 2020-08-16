class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result: ListNode?
        guard let temp1 = l1 else { return l2 }
        guard let temp2 = l2 else { return l1 }

        if temp1.val > temp2.val {
            let next = temp2.next
            result = temp2
            temp2.next = mergeTwoLists(l1, next)
        } else {
            let next = temp1.next
            result = temp1
            temp1.next = mergeTwoLists(next, l2)
        }
        return result
    }
}
