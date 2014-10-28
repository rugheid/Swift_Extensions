//
//  Operators.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 28/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import Foundation

// MARK: Power **

infix operator ** { associativity left precedence 160 }
infix operator **= { associativity right precedence 90 }

/**
    Returns the left operand to the power of the second operand.
    
    :param: left The base
    :param: right The exponent

    :returns: left to the power right
*/
func ** (left: Double, right: Double) -> Double {
    
    return pow(left, right)
}

func **= (inout left: Double, right: Double) {
    
    left = left ** right
}