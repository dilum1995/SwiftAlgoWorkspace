//
//  Node.swift
//  AddTwoNumbers
//
//  Created by Dilum De Silva on 2021-10-17.
//

import Foundation

public class Node {
    public var val: Int
    public var next: Node?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: Node?) { self.val = val; self.next = next; }
    
    func appendToTail(val: Int){
        if next != nil {
            next?.appendToTail(val: val)
        } else {
            next = Node(val)
        }
    }
    
}
