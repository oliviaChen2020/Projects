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
        let  newArr = original.map{$0 * 2}
            print(newArr)
            return newArr
    }

    /// 2. Write a function to return the last half of the array, not including the median
    func lastHalf(array: [Int]) -> [Int] {
        var mid = array.count / 2
        if (array.count % 2 != 0) {
            mid+=1
        }
        print(mid)
        let halfArr = array[mid...]
        print(halfArr)
        let result = Array(halfArr)
        return result
    }

    /// 3. Write a function that can creates an array populated with integers going from start (input) to end (input)
    func createArray(from start: Int, to end: Int) -> [Int] {
        var newArr = [Int]()
        for i in start...end {
            newArr.append(i)
        }
        return newArr
    }

    /**
        4. Create this 2-D array
        [[1,2,3],
        [4,5,6],
        [7,8,9]]
     */
    func create2DArray() -> [[Int]] {
        var nestedArray = [[Int]]()
        var num = 1
        for _ in 0...2 {
            nestedArray.append([num, num+1, num+2] )
            num+=3
        }
        return nestedArray
    }

    /// 5. Write a function that returns the number of pairs of elements that sums up to 0
    /// Input [1,2,3,-1,-2,-4] -> Output 2
    func findPairsOfOpposites(nums: [Int]) -> Int {
        var pairs = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if(nums[i] + nums[j] == 0){
                    pairs+=1
                }
            }
        }
        return pairs
    }
    
    /// 6. Returns an array of indexes where the char occurs in input word
    func positionsOf(character: Character, in word: String) -> [Int] {
        let charArr = Array(word)
        var positionArr = [Int]()
        for i in 0..<charArr.count {
            if(charArr[i] == character){
                positionArr.append(i)
            }
        }
        return positionArr
    }
    
    /**
        7. Scenario: There is a conference room, and an array of `I`s and `O`s.
        `I` means a person enters the room and needs a chair.
        `O` means a person leaves the room and a chair opens up.
        Find the maximum number of chairs required to allow everyone (at any point) to have a seat
        Ex. [ I, I, O] -> 2
     */
    func minimumChairs(array: [Character]) -> Int {
        var maxCount = 0
        var currCount = 0
        for i in 0..<array.count {
            if(array[i] == "I"){
                currCount += 1
                if(currCount > maxCount){
                    maxCount = currCount
                }
            } else if(array[i] == "O"){
                currCount -= 1
                if(currCount > maxCount){
                    currCount = maxCount
                }
            }
        }
        return maxCount
    }
    
    /// 8. Pig latin but with words separated by spaces
    func pigLatinSentence(sentence: String) -> String {
        let array = Array(sentence)
        var startPoint = array.startIndex
        var endPoint = array.startIndex
        var length = startPoint..<endPoint
        var subArr = array[length]
        var subStr = String(subArr)
        var finalStr = ""
        for i in 0..<array.count {
           if(array[i] == " ") {
               endPoint = array.index(array.startIndex, offsetBy: i)
            //    startPoint = array.index(array.startIndex, offsetBy:i+1 )
               print(startPoint)
               length = startPoint..<endPoint
               subArr = array[length]
               subStr = String(subArr)
               print(length)
               print(subStr)
            //    finalStr.append()
           }
        }
        return finalStr
    }
    
    func returnPigLatin(word: String) -> String {
        var result = word
        let firstChar = word[word.startIndex]
        if(firstChar.lowercased() == "a" || firstChar.lowercased() == "e" || firstChar.lowercased() == "i" || firstChar.lowercased() == "o" || firstChar.lowercased() == "u"){
            result.append("yay")
        } else {
            result.removeFirst()
            result.append(firstChar)
            result.append("ay")
        }
        return result
    }
    
    /**
        9. Find the best day to first BUY and then a day occuring after that day to SELL. Return the maximum profit (buy price - sell price)
        var prices = [7,1,5,3,6,4] -> returns 5
     */
    
    
    func maxProfit(array: [Int]) -> Int {
        var maxProfit = 0
           for i in 0..<array.count {
               for j in i+1..<array.count {
                   var currProfit = array[j] - array[i]
                   if(currProfit > maxProfit) {
                       maxProfit = currProfit
                   }
               }
           }
           return maxProfit
    }
    
    /**
        10. Input: array of integers: [1, 4, 8, 4] with 1 having the highest priority.
        Output: reduce the distance bettwen priorities but keep the same priority ordering
        [1, 4, 8, 4] -> [1, 2, 3, 2]
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
