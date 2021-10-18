//
//  ViewController.swift
//  LongestSubstring
//
//  Created by Dilum De Silva on 2021-10-19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Result: \(lengthOfLongestSubstring(for: "abcabcbb"))")
            
    }

    func lengthOfLongestSubstring(for str: String) -> Int {
        if str.count == 0 || str.count == 1 {
            return str.count
        }
        
        var maxLength = 0
        var repeatPointer = -1
        var index = 0
        var charDict = [Character:Int]()
        
        for char in str {
            if (charDict[char] != nil) && charDict[char]! > repeatPointer {
                repeatPointer = charDict[char]!
            }
            
            maxLength = max(index - repeatPointer, maxLength)
            charDict[char] = index
            
            index += 1
        }
        
        return maxLength
    }

}

