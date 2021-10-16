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
        
        let l1 = Node(2, Node(0, Node(3)))
        let l2 = Node(5, Node(6, Node(4)))
        
        addTwoReversedLists(with: l1, l2)
    }
    
    func addTwoReversedLists(with l1: Node, _ l2: Node) {
        let reversedL1 = helper.getReversedList(from: l1)
        let reversedL2 = helper.getReversedList(from: l2)
        
        let listSum = helper.convertListToInt(with: reversedL1) + helper.convertListToInt(with: reversedL2)
        
        let reversedNewList = helper.getReversedList(from: helper.convertIntToList(with: listSum))
        
        
        helper.printLinkedList(with: reversedNewList)
    }

}


