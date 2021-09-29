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
        for char in word {
            print(char)
        }
    }
    
    /// given a word, flip its characters, and print the result
    /// e.g. football -> llabtoof
    func flipWord(word: String) {
        print(String(word.reversed()))
    }
    
    /// Using for-in-enumerated(), print odd-position chars in word
    func printOddCharsEnumerated(word: String) {
        for (index,value) in word.enumerated(){
            if(index % 2 == 0 || index == 0){
                print(value)
            }
        }
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
        let vowels: [String] = ["a", "e", "i", "o", "u"]
        var toPrint = ""
            var workingWord = word
            if(vowels.contains(String(word.prefix(1)))){
                toPrint = word + "yay"
            } else {
                workingWord.removeFirst()
                toPrint = workingWord + String(word.prefix(1)) + "ay"
            }
        print(toPrint)
    }
    
    /// Using loop and string.index, return true if input is a palindrome
    func isPalindrome(word: String) -> Bool {
        return word == String(word.reversed())
    }
}
