//
//  SetDictionaryProjectTests.swift
//  SetDictionaryProjectTests
//
//  Created by Luat on 8/4/21.
//

import XCTest
@testable import SetDictionaryProject

class SetDictionaryProjectTests: XCTestCase {
    let tester = Tester()
    
    func testRemoveDups() {
        let input = [1, 1, 2, 2, 3]
        let expected: Set<Int> = [1, 2, 3]
        
        let result = tester.removeDups(nums: input)
        
        XCTAssert(expected == Set(result), "\n Result: \(result) \n Expected: \(expected)")
    }
    
    func testCommonNums() {
        let firstInput = [1, 2, 3, 10]
        let secondInput = [1, 2, 3, 8]
        let expected: Set<Int> = [1, 2, 3]
        
        let result = tester.findCommonNums(from: firstInput, and: secondInput)
        
        XCTAssert(expected == Set(result), "\n Result: \(result) \n Expected: \(expected)")
    }
    
    func testMatchingLetters() {
        let first = "hello"
        let second = "goodbye"
        let expected: Set<Character> = [
            "e", "o"
        ]
        
        let result = tester.findMatchingLetters(firstWord: first, secondWord: second)
        
        XCTAssert(expected == Set(result), "\n Result: \(result) \n Expected: \(expected)")
    }
    
    func testCreateCounter() {
        let input = "aa bb c"
        let expected: [Character: Int] = [
            "a": 2,
            "b": 2,
            "c": 1,
        ]
        
        let result = tester.createCounter(string: input)
        
        XCTAssert(expected == result, "\n Result: \(result) \n Expected: \(expected)")
    }
    
    func testMostFrequent() {
        let input = "aa bbb c"
        let expected: Character = "b"
        
        let result = tester.mostFrequentLetter(string: input)
        
        XCTAssert(expected == result, "\n Result: \(result) \n Expected: \(expected)")
    }
    
    
    
    func testFindPairs() throws {
        let input = [1, 1]
        let expected = 0
        
        let result = tester.findPairs(nums: input)
        
        XCTAssertEqual(result, expected, "\n Result: \"\(result)\" \n Expected: \"\(expected)\"")
    }
    
    func testReduceDistanceKeepPriority() {
        let input = [1, 4, 8, 1]
        let expected = [1, 2, 3, 1]
        
        let result = tester.reduceDistanceKeepPriority(array: input)
        
        XCTAssertEqual(result, expected, "\n Result: \"\(result)\" \n Expected: \"\(expected)\"")
        
        let inputTwo = [8, 6, 2, 4]
        let expectedTwo = [4, 3, 1, 2]
        
        let resultTwo = tester.reduceDistanceKeepPriority(array: inputTwo)
        
        XCTAssertEqual(resultTwo, expectedTwo, "\n Result: \"\(resultTwo)\" \n Expected: \"\(expectedTwo)\"")
    }

}

