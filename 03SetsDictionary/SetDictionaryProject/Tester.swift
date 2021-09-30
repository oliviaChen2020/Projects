//
//  Tester.swift
//  SetDictionaryProject
//
//  Created by Luat on 8/4/21.
//

import Foundation

struct Tester {
    static let shared = Tester()
    /// Remove an array with the duplicated values removed
    func removeDups(nums: [Int]) -> [Int] {
        return Array(Set(nums))
    }
    
    /// Find the nums that exist in both arrays
    func findCommonNums(from firstNums: [Int], and secondNums: [Int]) -> [Int] {
        
        return Array(Set(firstNums).intersection(Set(secondNums)))
    }
    
    /// first: "hello", second: "bye" -> ["e"]
    func findMatchingLetters(firstWord: String, secondWord: String) -> [Character] {
        return Array(Set(firstWord).intersection(Set(secondWord)))
    }
    
    
    /// Create a dictionary of the counts of the letters, ignoring spaces
    func createCounter(string: String) -> [Character: Int] {
        var dict: [Character:Int] = [:]
        for char in string {
            if(char != " "){
                if(dict[char] != nil){
                    dict[char]! += 1
                }else{
                    dict[char] = 1
                }
            }
        }
        return dict
    }
    
    /// Find most frequent letter in string: "hello there" -> "e"
    func mostFrequentLetter(string: String) -> Character {
//        var toReturn: [Character:Int] = [:]
        var dict: [Character:Int] = [:]
        
        for char in string{
            if(char != " "){
                if(dict[char] != nil){
                    dict[char]! += 1
                } else {
                    dict[char] = 1
                }
            }
        }
        var toReturn = dict.max { a,b in a.value < b.value }
        toReturn = toReturn!
        print(Array(arrayLiteral: toReturn!)[0].key)
//        return Array(dict.keys)[0]
        return Array(arrayLiteral: toReturn!)[0].key
    }
    
    /// O(n) time: avoid nested for loops
    func findPairs(nums: [Int]) -> Int {
        var toReturn: Int = 0
        for item in nums {
            if nums.contains(item * -1){
                toReturn += 1
            }
        }
        return toReturn / 2
    }
    
    /**
     Using Dictionary:
     Input: array of integers: [1, 4, 8, 1] with 1 having the highest priority.
     Output: reduce the distance bettwen priorities but keep the same priority ordering
     [1, 4, 8, 1] -> [1, 2, 3, 1]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        var toReturn: [Int] = []
        var dict: [String:Int] = [:]
        let duplicatesRemoved = Array(Set(array))
        let sorted:[Int] = duplicatesRemoved.sorted{
            $0 < $1
        }
        for (index,value) in sorted.enumerated(){
            dict[String(value)] = index + 1
        }
        print(dict)
        for item in array {
            toReturn.append(dict[String(item)]!)
//            print(dict[String(item)]!)
        }
        return toReturn
        
    }
    
}
