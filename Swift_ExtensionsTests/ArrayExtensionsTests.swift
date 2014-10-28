//
//  ArrayExtensionsTests.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 28/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import UIKit
import XCTest

class ArrayExtensionsTests: XCTestCase {
    
    var testArray = [Int]()
    
    override func setUp() {
        super.setUp()
        
        testArray = [0, 1, 2, 3, 4]
    }
    
    
    // MARK: Subscript
    
    func testArraySubscriptGet() {
        
        let expected = [1, 3]
        let result = testArray[[1, 3]]
        XCTAssertEqual(expected, result)
    }
    
    func testArraySubscriptSet() {
        
        var expected = [5, 1, 2, 3, 6]
        testArray[[0, 4]] = [5, 6]
        XCTAssertEqual(expected, testArray)
        
        expected = [5, 1, 2, 3, 6]
        testArray[[]] = []
        XCTAssertEqual(expected, testArray)
        
        expected = [5, 7, 2, 3, 6]
        testArray[[1]] = [7, 8, 9]
        XCTAssertEqual(expected, testArray)
        
        expected = [5, 7, 2, 3, 6]
        testArray[[]] = [8, 9]
        XCTAssertEqual(expected, testArray)
    }
    
}