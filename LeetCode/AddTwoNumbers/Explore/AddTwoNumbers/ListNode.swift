//
//  Node.swift
//  AddTwoNumbers
//
//  Created by Dilum De Silva on 2021-10-17.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode {
    func appendToTail(val: Int){
        if next != nil {
            next?.appendToTail(val: val)
        } else {
            next = ListNode(val)
        }
    }
}
