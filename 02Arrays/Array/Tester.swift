//
//  Tester.swift
//  Array
//
//  Created by Luat on 5/19/21.
//

import Foundation

class Tester {
    static let shared = Tester()
    
    /// 1. Write a function that takes an array of numbers and returns an array with each of the numbers multiplied by 2
    func multiplyByTwo(numbers original: [Int]) -> [Int] {
        return original.map{ $0 * 2 }
    }

    /// 2. Write a function to return the last half of the array, not including the median
    func lastHalf(array: [Int]) -> [Int] {
           return array.suffix(array.count / 2)
    }

    /// 3. Write a function that can creates an array populated with integers going from start (input) to end (input)
    func createArray(from start: Int, to end: Int) -> [Int] {
        var toReturn: [Int] = []
             for leNumb in start...end {
               toReturn.append(leNumb)
               print(leNumb)
           }
           return toReturn
    }

    /**
        4. Create this 2-D array
        [[1,2,3],
        [4,5,6],
        [7,8,9]]
     */
    func create2DArray() -> [[Int]] {
        [[1,2,3],
         [4,5,6],
         [7,8,9]]
    }

    /// 5. Write a function that returns the number of pairs of elements that sums up to 0
    /// Input [1,2,3,-1,-2,-4] -> Output 2
    func findPairs(nums: [Int]) -> Int {
         var toReturn = 0
         for num in nums {
           if(nums.contains(0 - num)){
             toReturn += 1
           }
         }
         return toReturn / 2
    }
    
    /// 6. Returns an array of indexes where the char occurs in input word
    func positionsOf(character: Character, in word: String) -> [Int] {
        var toReturn: [Int] = []
            for (index,value) in word.enumerated(){
              if(character == value){
                toReturn.append(index)
              }
            }
            
            return toReturn
    }
    
    /**
        7. Scenario: There is a conference room, and an array of `I`s and `O`s.
        `I` means a person enters the room and needs a chair.
        `O` means a person leaves the room and a chair opens up.
        Find the maximum number of chairs required to allow everyone (at any point) to have a seat
        Ex. [ I, I, O] -> 2
     */
    func minimumChairs(array: [Character]) -> Int {
        var maxNeeded: Int = 0
        var currentlyNeeded: Int = 0
        for item in array{
            if(item == "I"){
                currentlyNeeded += 1
            }else{
                if (currentlyNeeded > maxNeeded){
                    maxNeeded = currentlyNeeded
                    currentlyNeeded = 0
                }else {
                    currentlyNeeded = 0
                }
            }
        }
        return maxNeeded
    }
    
    /// 8. Pig latin but with words separated by spaces
    func pigLatinSentence(sentence: String) -> String {
        var toReturnArray: [String] = []
        let vowels: [String] = ["a", "e", "i", "o", "u"]
        let workingString =  sentence.components(separatedBy: " ")
        for word in workingString {
            var workingWord = word
            if(vowels.contains(String(word.prefix(1)))){
                workingWord = workingWord + "yay"
            } else {
                workingWord.removeFirst()
                workingWord = workingWord + String(word.prefix(1)) + "ay"
            }
            toReturnArray.append(workingWord)
        }
        print(toReturnArray)
        let toReturnString = toReturnArray.joined(separator: " ")
        return toReturnString
        
    }
    
    
    func returnPigLatin(word: String) -> String {
        ""
    }
    
    /**
        9. Find the best day to first BUY and then a day occuring after that day to SELL. Return the maximum profit (buy price - sell price)
        var prices = [7,1,5,3,6,4] -> returns 5
     */
    
    
    func maxProfit(array: [Int]) -> Int {
        var newArray = array
        var toReturn = 0
        
        for price in array {
            for secondPrice in newArray{
                if(secondPrice - price > toReturn){
                    toReturn = secondPrice - price
                }
                print(price,secondPrice)
            }
            newArray.removeFirst(1)
        }
        
        return toReturn
    }
    
    /**
        10. Input: array of integers: [1, 4, 8, 4] with 1 having the highest priority.
        Output: reduce the distance bettwen priorities but keep the same priority ordering
        [1, 4, 8, 4] -> [1, 2, 3, 2]
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
