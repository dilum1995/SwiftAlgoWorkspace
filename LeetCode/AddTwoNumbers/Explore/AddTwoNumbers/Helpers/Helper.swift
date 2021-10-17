//
//  Helper.swift
//  AddTwoNumbers
//
//  Created by Dilum De Silva on 2021-10-17.
//

import Foundation

final class Helper: NSObject {
    
    func getReversedList(from list: ListNode?) -> ListNode? {
        guard list != nil else {return nil}
        var tail: ListNode?
        var headNode = list
        
        while let head = headNode {
            let tailRef = head.next
            head.next = tail
            tail = head
            headNode = tailRef
           
        }
        return tail
    }
    
    func convertListToInt(with list: ListNode?) -> Int{
        var str: String = ""
        var headNode = list
        while let head = headNode {
            let tailRef = head.next
            str += "\(head.val)"
            headNode = tailRef
        }
        return Int(str) ?? 0
    }
    
    func convertIntToList(with intList: Int) -> ListNode {
        let intArray = String(intList).compactMap { Int(String($0)) }
        let newList = ListNode(intArray[0])
        for element in intArray.dropFirst() {
            newList.appendToTail(val: element)
        }
        return newList
    }

    func printLinkedList(with list: ListNode?) {
        print("list: \(convertListToInt(with: list))")
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
