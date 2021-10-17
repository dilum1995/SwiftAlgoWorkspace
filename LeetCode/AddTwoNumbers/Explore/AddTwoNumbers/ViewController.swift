//
//  ViewController.swift
//  AddTwoNumbers
//
//  Created by Dilum De Silva on 2021-10-17.
//

import UIKit

class ViewController: UIViewController {
    private var helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let l1 = ListNode(2, ListNode(4, ListNode(3)))
        let l2 = ListNode(5, ListNode(6, ListNode(4)))
        
        let result = addTwoReversedLists(with: l1, l2)
        helper.printLinkedList(with: result)
    }
    
    func addTwoReversedLists(with l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil, l2 != nil else { return nil }
        
        let head = ListNode(0)
        var pointer = head
        var carry = 0
        var list1 = l1
        var list2 = l2
        
        while (list1 != nil) || (list2 != nil) || carry != 0 {
            let total = helper.getNodeValue(list1) + helper.getNodeValue(list2) + carry
            pointer.val = total % 10
            carry = total / 10
            
            list1 = helper.getNextNode(list1)
            list2 = helper.getNextNode(list2)
            if list1 != nil || list2 != nil || carry != 0 {
                pointer.next = ListNode(0)
                pointer = pointer.next!
            }
        }
        
        return head
    }

}


