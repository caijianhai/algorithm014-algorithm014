class MyStatck<V> {
    var info: [V] = []
    func push(val: V) {
        info.append(val)
    }
    func pop() -> V? {
        guard info.count > 0 else { return nil }
        return info.removeLast()
    }
    func top() -> V? {
        guard info.count > 0 else { return nil }
        return info.last
    }
    func pushChildren(vals: [V]) {
        info.append(contentsOf: vals)
    }
}

class MyQueue<V> {
    var info: [V] = []
    func enQueue(val: V) {
        info.append(val)
    }
    func deQueue() -> V? {
        guard info.count > 0 else { return nil }
        return info.removeFirst()
    }
    func top() -> V? {
        guard info.count > 0 else { return nil }
        return info.first
    }
    func pushChildren(vals: [V]) {
        info.append(contentsOf: vals)
    }
}

class Solution {
    func levelOrder(_ root: Node?) -> [[Int]] {
        guard let r = root else { return [] }
        let myQueue = MyQueue<Node>()
        myQueue.enQueue(val: r)
        return queue(myQueue: myQueue)
    }
    
    func queue(myQueue: MyQueue<Node>) -> ([[Int]]) {
        var res: [[Int]] = []
        var resInt: [Int] = []
        let resQueue: MyQueue<Node> = MyQueue()
        while let top = myQueue.top() {
            resQueue.pushChildren(vals: top.children)
            resInt.append(top.val)
            _ = myQueue.deQueue()
        }
        if resInt.count > 0 {
            res.append(resInt)
        }
        if resQueue.top() != nil {
            res.append(contentsOf: queue(myQueue: resQueue))
        }
        return res
    }
}
