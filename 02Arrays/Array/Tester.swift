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
        var newArray:Array<Int> = []
        for (_, v) in original.enumerated() {
            newArray.append(v * 2)
        }
        return newArray
    }

    /// 2. Write a function to return the last half of the array, not including the median
    func lastHalf(array: [Int]) -> [Int] {
        let halfway = array.count / 2
        var slicedArray: [Int] = []
        for (i, v) in array.enumerated() {
            if i > halfway {
                slicedArray.append(v)
            }
        }
        return slicedArray
    }

    /// 3. Write a function that can creates an array populated with integers going from start (input) to end (input)
    func createArray(from start: Int, to end: Int) -> [Int] {
        var newArray: [Int] = []
        for n in start...end {
            newArray.append(n)
        }
        return newArray
    }

    /**
        4. Create this 2-D array
        [[1,2,3],
        [4,5,6],
        [7,8,9]]
     */
    func create2DArray() -> [[Int]] {
        return [[1, 2, 3], [4,5,6], [7,8,9]]
    }

    /// 5. Write a function that returns the number of pairs of elements that sums up to 0
    /// Input [1,2,3,-1,-2,-4] -> Output 2
    func findPairs(nums: [Int]) -> Int {
        var pairs = 0
        var secondArray: [Int] = []
        for (i, v) in nums.enumerated() {
            if i > 1 {
                secondArray.append(v)
            }
        }
        for (_, iv) in nums.enumerated() {
            for (_, jv) in secondArray.enumerated() {
                if iv + jv == 0 {
                    pairs += 1
                }
            }
        }
        return pairs
    }
    
    /// 6. Returns an array of indexes where the char occurs in input word
    func positionsOf(character: Character, in word: String) -> [Int] {
        var answer: [Int] = []
        for (i, v) in word.enumerated() {
            if v == character {
                answer.append(i)
            }
        }
        return answer
    }
    
    /**
        7. Scenario: There is a conference room, and an array of `I`s and `O`s.
        `I` means a person enters the room and needs a chair.
        `O` means a person leaves the room and a chair opens up.
        Find the maximum number of chairs required to allow everyone (at any point) to have a seat
        Ex. [ I, I, O] -> 2
     */
    func minimumChairs(array: [Character]) -> Int {
        var peopleStanding = 0
        var seats = 0
        for char in array {
            if char == "I" {
                if seats == 0 {
                    peopleStanding += 1
                }
                if seats > 0 {
                    seats -= 1
                }
            } else if char == "O" {
                seats += 1
            }
        }
        return peopleStanding
    }
    
    /// 8. Pig latin but with words separated by spaces
    
    func returnPigLatin(word: String) -> String {
        if word[word.startIndex] == "a" || word[word.startIndex] == "e" || word[word.startIndex] == "i" || word[word.startIndex] == "o" || word[word.startIndex] == "u" || word[word.startIndex] == "A" || word[word.startIndex] == "E" || word[word.startIndex] == "I" || word[word.startIndex] == "O" || word[word.startIndex] == "U" {
            return (word + "yay")
        } else {
        let secondIndex = word.index(word.startIndex, offsetBy: 1)
        let lastIndex = word.index(word.startIndex, offsetBy: word.count - 1)
        var newWord = String(word[secondIndex...lastIndex])
        newWord.append(word[word.startIndex])
            return newWord + "ay"
        }
    }
    func pigLatinSentence(sentence: String) -> String {
        let myVar = sentence.split(separator: " ")
        var newSentence = ""
        for (i, each) in myVar.enumerated() {
            newSentence += String(returnPigLatin(word: String(each)))
            if i < (myVar.count - 1) {
                newSentence += " "
            }
        }
        
        return newSentence
    }

    
    /**
        9. Find the best day to first BUY and then a day occuring after that day to SELL. Return the maximum profit (buy price - sell price)
        var prices = [7,1,5,3,6,4] -> returns 5
     */
    
    
    func maxProfit(array: [Int]) -> Int {
        var bestDayToBuy = 0
        var lowestPrice = 9999999999999
        var bestDayToSell = 0
        var highestPrice = 0
        for (i, price) in array.enumerated() {
            if price < lowestPrice {
                lowestPrice = price
                bestDayToBuy = i
            }
            if i > bestDayToBuy && price > highestPrice {
                bestDayToSell = i
                highestPrice = price
            }
        }
        let profit = highestPrice - lowestPrice
        return profit
    }
    
    /**
        10. Input: array of integers: [1, 4, 8, 4] with 1 having the highest priority.
        Output: reduce the distance bettwen priorities but keep the same priority ordering
        [1, 4, 8, 4] -> [1, 2, 3, 2]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        var myDictionary: [Int:Int] = [:]
        let newArray = Array(Set(array)).sorted()
        var answer: [Int] = []
        for (idx, item) in newArray.enumerated() {
            myDictionary[item] = idx + 1
        }
        for item in array {
            answer.append(myDictionary[item]!)
        }
        return answer
    }
}
