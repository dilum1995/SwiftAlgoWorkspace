class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 || s.count == 1 {
            return s.count
        }
        
        var maxLength = 0
        var repeatPointer = -1
        var index = 0
        var charDict = [Character:Int]()
        
        for char in s {
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
