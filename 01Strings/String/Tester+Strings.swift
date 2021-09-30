//
//  Tester+Strings.swift
//  String
//
//  Created by Luat on 8/2/21.
//

import Foundation

extension Tester {

    /// Using print command
    func printWord(word: String) {
        print(word)
    }
    
    /// input "hello" should print "HELLO"
    func printUpperCase(word: String) {
        print(word.uppercased())
    }
    
    /// Using for loop, print each char in word
    func printLetters(word: String) {
        for letter in word {
            print(letter)
        }
    }
    
    /// given a word, flip its characters, and print the result
    /// e.g. football -> llabtoof
    func flipWord(word: String) {
        let reversedWord = String(word.reversed())
        print(reversedWord)
    }
    
    /// Using for-in-enumerated(), print odd-position chars in word
    func printOddCharsEnumerated(word: String) {
//        var oddWord: [String] = []
        for (index, value) in word.enumerated() {
            if index % 2 == 0 {
//                oddWord.append(String(value))
                print(value)
            }
        }
//        print(oddWord)
    }
    
    /**
     Pig Latin:
     1) Move the first letter to the end and add "ay"
     pig -> igpay
     latin -> atinay
     2) IF word starts with a vowel, add "yay" to the word
     one -> oneyay
     */
    func printPigLatin(word: String) {
        if word[word.startIndex] == "a" || word[word.startIndex] == "e" || word[word.startIndex] == "i" || word[word.startIndex] == "o" || word[word.startIndex] == "u" || word[word.startIndex] == "A" || word[word.startIndex] == "E" || word[word.startIndex] == "I" || word[word.startIndex] == "O" || word[word.startIndex] == "U" {
            print(word + "yay")
        } else {
            let secondIndex = word.index(word.startIndex, offsetBy: 1)
            let lastIndex = word.index(word.startIndex, offsetBy: word.count - 1)
            var newWord = word[secondIndex...lastIndex]
            newWord.append(word[word.startIndex])
            print(newWord + "ay")
        }
    }

    /// Using loop and string.index, return true if input is a palindrome
    func isPalindrome(word: String) -> Bool {
        let reversedWord = String(word.reversed())
        if reversedWord == word {
            return true
        }
        return false
    }
}
