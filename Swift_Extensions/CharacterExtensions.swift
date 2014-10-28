//
//  CharacterExtensions.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 27/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import Foundation

extension Character {
    
    /**
        Returns the unichar value.
    
        :returns: The unichar value of the receiver.
    */
    var unicharValue: unichar {
        
        let nsstring = NSString(string: "\(self)")
        
        return nsstring.characterAtIndex(0)
    }
}