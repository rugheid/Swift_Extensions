//
//  StringExtensionsTests.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 28/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import UIKit
import XCTest

class StringExtensionsTests: XCTestCase {
    
    var testString = ""
    
    override func setUp() {
        super.setUp()
        
        testString = "(abc)+&123&"
    }
    
    /// MARK: Subscript
    
    func testIntSubscriptGet() {
        
        var expected = "("
        var result = testString[0]
        XCTAssertEqual(expected, result)
        
        expected = "&"
        result = testString[10]
        XCTAssertEqual(expected, result)
    }
    
    func testIntSubscriptSet() {
        
        var expected = "+abc)+&123&"
        testString[0] = "+"
        XCTAssertEqual(expected, testString)
        
        expected = "+abc++&123&"
        testString[4] = "+"
        XCTAssertEqual(expected, testString)
    }
    
    func testRangeSubscriptGet() {
        
        var expected = "(abc)"
        var result = testString[0...4]
        XCTAssertEqual(expected, result)
        
        expected = testString
        result = testString[0...10]
        XCTAssertEqual(expected, result)
    }
    
    func testRangeSubscriptSet() {
        
        var expected = "(def)+&123&"
        testString[1...3] = "def"
        XCTAssertEqual(expected, testString)
        
        expected = "0123456789"
        testString[0...10] = "0123456789"
        XCTAssertEqual(expected, testString)
    }
    
    func testArraySubscriptGet() {
        
        var expected = "a1"
        var result = testString[[1,7]]
        XCTAssertEqual(expected, result)
        
        expected = ""
        result = testString[[]]
        XCTAssertEqual(expected, result)
    }
    
    func testArraySubscriptSet() {
        
        var expected = "(dbc)+&523&"
        testString[[1,7]] = "d5"
        XCTAssertEqual(expected, testString)
        
        expected = "(dbc)+&523&"
        testString[[]] = ""
        XCTAssertEqual(expected, testString)
        
        expected = "^dbc)+&523&"
        testString[[0]] = "^sh&"
        XCTAssertEqual(expected, testString)
        
        expected = "^dbc)+&523&"
        testString[[]] = "^sh&"
        XCTAssertEqual(expected, testString)
    }
    
    
    /// MARK: Modification
    
    func testRemovingCharactersInSet() {
        
        var expected = "abc"
        var result = testString.stringByRemovingCharactersInSet(NSCharacterSet.letterCharacterSet().invertedSet)
        XCTAssertEqual(expected, result)
        
        expected = "(abc)+&&"
        result = testString.stringByRemovingCharactersInSet(NSCharacterSet.decimalDigitCharacterSet())
        XCTAssertEqual(expected, result)
    }
    
    func testKeepingOnlyCharactersInSet() {
        
        var expected = "abc"
        var result = testString.stringByKeepingOnlyCharactersInSet(NSCharacterSet.letterCharacterSet())
        XCTAssertEqual(expected, result)
        
        expected = "123"
        result = testString.stringByKeepingOnlyCharactersInSet(NSCharacterSet.decimalDigitCharacterSet())
        XCTAssertEqual(expected, result)
    }
    
    func testRemovingCharacterAtIndex() {
        
        var expected = "abc)+&123&"
        var result = testString.stringByRemovingCharacterAtIndex(0)
        XCTAssertEqual(expected, result)
        
        expected = "(abc)&123&"
        result = testString.stringByRemovingCharacterAtIndex(5)
        XCTAssertEqual(expected, result)
    }
    
    func testRemovingCharactersAtIndexes() {
        
        var expected = "()+&123&"
        var result = testString.stringByRemovingCharactersAtIndexes([1,2,3])
        XCTAssertEqual(expected, result)
        
        expected = "abc+123"
        result = testString.stringByRemovingCharactersAtIndexes([0,4,6,10])
        XCTAssertEqual(expected, result)
    }
    
}