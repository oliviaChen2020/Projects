//
//  Tester.swift
//  SetDictionaryProject
//
//  Created by Luat on 8/4/21.
//

import Foundation

struct Tester {
    /// Remove an array with the duplicated values removed
    func removeDups(nums: [Int]) -> [Int] {
        let uniqueNum = Set(nums).sorted()
        return Array(uniqueNum)
    }
    
    /// Find the nums that exist in both arrays
    func findCommonNums(from firstNums: [Int], and secondNums: [Int]) -> [Int] {
        let firstNums = firstNums
        let secondNums = secondNums
        var lookup = [Int:Bool]()
        firstNums.forEach {
            lookup[$0] = true
        }
        var commonNums = [Int]()
        secondNums.forEach {
            num in
            if lookup[num] ?? false {
                commonNums.append(num)
            }
        }
        return commonNums
    }
    
    /// first: "hello", second: "bye" -> ["e"]
    func findMatchingLetters(firstWord: String, secondWord: String) -> [Character] {
        let firstWord = Array(firstWord)
        let secondWord = Array(secondWord)
        var lookup = [Character:Bool]()
        firstWord.forEach {
            lookup[$0] = true
        }
        var commonLetters = [Character]()
        secondWord.forEach {
            letter in
            if lookup[letter] ?? false {
                commonLetters.append(letter)
            }
        }
        return commonLetters
    }
    
    
    /// Create a dictionary of the counts of the letters, ignoring spaces
    func createCounter(string: String) -> [Character: Int] {
        let freedSpaceString = string.filter {!$0.isWhitespace}
        let stringArr = Array(freedSpaceString)
        var counter = [Character:Int]()
        for letter in freedSpaceString {
            counter[letter] = (counter[letter] ?? 0) + 1
        }
           return counter
    }
    
    /// Find most frequent letter in string: "hello there" -> "e"
    func mostFrequentLetter(string: String) -> Character {
        let freedSpaceString = string.filter {!$0.isWhitespace}
        let stringArr = Array(freedSpaceString)
        var counter = [Character:Int]()
        var character: Character = " "
        for letter in freedSpaceString {
        counter[letter] = (counter[letter] ?? 0) + 1
        }
        if let (letter, count) = counter.max(by: {$0.1 < $1.1}){
            character = letter
        }
        return character
    }
    
    /// O(n) time: avoid nested for loops
    func findPairs(nums: [Int]) -> Int {        
        var pair = 0
        for i in 0..<nums.count{
            for j in 1..<nums.count {
                if(nums[i] + nums[j] == 0){
                    pair += 1
                }
            }
        }
        return pair
    }
    
    /**
     Using Dictionary:
     Input: array of integers: [1, 4, 8, 1] with 1 having the highest priority.
     Output: reduce the distance bettwen priorities but keep the same priority ordering
     [1, 4, 8, 1] -> [1, 2, 3, 1]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        let mySet = Set(array)
        let sortedNums = mySet.sorted()
        var dictionary = [Int: Int]()
        var priorityArr = [Int]()
        for i in 0..<sortedNums.count{
            dictionary[sortedNums[i]] = i+1
        }
        for num in array {
            priorityArr.append(dictionary[num] ?? 0)
        }
    return priorityArr
    }
}
