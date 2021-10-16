//
//  Helper.swift
//  AddTwoNumbers
//
//  Created by Dilum De Silva on 2021-10-17.
//

import Foundation

final class Helper: NSObject {
    
    func getReversedList(from list: Node?) -> Node? {
        guard list != nil else {return nil}
        var tail: Node?
        var headNode = list
        
        while let head = headNode {
            let tailRef = head.next
            head.next = tail
            tail = head
            headNode = tailRef
           
        }
        return tail
    }
    
    func convertListToInt(with list: Node?) -> Int{
        var str: String = ""
        var headNode = list
        while let head = headNode {
            let tailRef = head.next
            str += "\(head.val)"
            headNode = tailRef
        }
        return Int(str) ?? 0
    }
    
    func convertIntToList(with intList: Int) -> Node {
        let intArray = String(intList).compactMap { Int(String($0)) }
        let newList = Node(intArray[0])
        for element in intArray.dropFirst() {
            newList.appendToTail(val: element)
        }
        return newList
    }

    func printLinkedList(with list: Node) {
        print("list: \(convertListToInt(with: list))")
    }
}
