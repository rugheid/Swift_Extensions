//
//  OperatorsTests.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 28/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import UIKit
import XCTest

class OperatorsExtensionsTests: XCTestCase {
    
    // MARK: Power **
    
    func testPowerOperator() {
        
        var expected = 8.0
        var result = 2.0**3.0
        XCTAssertEqual(expected, result)
    }
    
    func testPowerAssignment() {
        
        var expected = 8.0
        var result = 2.0
        result **= 3.0
        XCTAssertEqual(expected, result)
    }
    
}