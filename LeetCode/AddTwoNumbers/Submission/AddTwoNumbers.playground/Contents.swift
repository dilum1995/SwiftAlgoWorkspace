
/**
 * You are given two non-empty linked lists representing two non-negative integers.
 * The digits are stored in reverse order, and each of their nodes contains a single digit.
 * Add the two numbers and return the sum as a linked list.
 *
 * You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 *
 * Input: l1 = [2,4,3], l2 = [5,6,4]
 * Output: [7,0,8]
 * Explanation: 342 + 465 = 807.
 *
 */


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(with l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil, l2 != nil else { return nil }
        
        let head = ListNode(0)
        var pointer = head
        var carry = 0
        var list1 = l1
        var list2 = l2
        
        while (list1 != nil) || (list2 != nil) || carry != 0 {
            let total = getNodeValue(list1) + getNodeValue(list2) + carry
            pointer.val = total % 10
            carry = total / 10
            
            list1 = getNextNode(list1)
            list2 = getNextNode(list2)
            if list1 != nil || list2 != nil || carry != 0 {
                pointer.next = ListNode(0)
                pointer = pointer.next!
            }
        }
        
        return head
    }

    
    func getNodeValue(_ listNode: ListNode?) -> Int {
        guard let node = listNode, listNode != nil
        else { return 0 }
        return node.val
    }
    
    func getNextNode(_ listNode: ListNode?) -> ListNode? {
        guard let node = listNode, listNode != nil
        else { return nil }
        return node.next
    }
    
}

