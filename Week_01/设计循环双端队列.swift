class MyCircularDeque {

    private var arr: [Int] = []
    private let limit: Int
    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        limit = k
    }
    
    /** Adds an item at the front of Deque. Return true if the operation is successful. */
    func insertFront(_ value: Int) -> Bool {
        guard arr.count < limit else { return false }
        arr.insert(value, at: 0)
        return true
    }
    
    /** Adds an item at the rear of Deque. Return true if the operation is successful. */
    func insertLast(_ value: Int) -> Bool {
        guard arr.count < limit else { return false }
        arr.append(value)
        return true
    }
    
    /** Deletes an item from the front of Deque. Return true if the operation is successful. */
    func deleteFront() -> Bool {
        guard arr.count > 0 else { return false }
        arr.removeFirst()
        return true
    }
    
    /** Deletes an item from the rear of Deque. Return true if the operation is successful. */
    func deleteLast() -> Bool {
        guard arr.count > 0 else { return false }
        arr.removeLast()
        return true
    }
    
    /** Get the front item from the deque. */
    func getFront() -> Int {
        guard arr.count > 0 else { return -1 }
        return arr.first!
    }
    
    /** Get the last item from the deque. */
    func getRear() -> Int {
        guard arr.count > 0 else { return -1 }
        return arr.last!
    }
    
    /** Checks whether the circular deque is empty or not. */
    func isEmpty() -> Bool {
        return arr.count == 0
    }
    
    /** Checks whether the circular deque is full or not. */
    func isFull() -> Bool {
        return arr.count == limit
    }
}

/**
 * Your MyCircularDeque object will be instantiated and called as such:
 * let obj = MyCircularDeque(k)
 * let ret_1: Bool = obj.insertFront(value)
 * let ret_2: Bool = obj.insertLast(value)
 * let ret_3: Bool = obj.deleteFront()
 * let ret_4: Bool = obj.deleteLast()
 * let ret_5: Int = obj.getFront()
 * let ret_6: Int = obj.getRear()
 * let ret_7: Bool = obj.isEmpty()
 * let ret_8: Bool = obj.isFull()
 */
