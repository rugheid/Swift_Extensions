//
//  StringExtensions.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 27/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import Foundation

extension String {
    
    /// MARK: Subscript
    
    // Get a string of a single character from the given index.
    subscript(index: Int) -> String {
        
        get {
            
            return String(Array(self)[index])
        }
        
        set {
            
            var selfByCharacters = Array(self)
            
            selfByCharacters[index] = Character(newValue)
            
            self = String(selfByCharacters)
        }
    }
    
    
    // Get a substring from the given range.
    subscript(range: Range<Int>) -> String {
        
        var start = advance(startIndex, range.startIndex)
        var end = advance(startIndex, range.endIndex)
        
        return substringWithRange(Range(start: start, end: end))
    }
    
    
    // Get a string from the characters at the given indexes.
    subscript(indexes: [Int]) -> String {
        
        let characters = Array(self)[indexes]
        
        return String(characters)
    }
    
    
    /// MARK: Mutation
    
    /**
        Returns a new string made by removing characters contained in a given character set.
    
        :param: set A character set containing the characters to remove from the receiver. set must not be nil.
    
        :returns: A new string made by removing from the receiver characters contained in set. If the receiver is composed entirely of characters from set, the empty string is returned.
    */
    func stringByRemovingCharactersInSet(set: NSCharacterSet) -> String {
        
        let selfByCharacters = Array(self)
        
        var cleanedString = ""
        
        for character in selfByCharacters {
            
            if !set.characterIsMember(character.unicharValue) {
                
                cleanedString += "\(character)"
            }
        }
        
        return cleanedString
    }
    
    
    /**
        Returns a new string made by keeping only the characters contained in a given character set.
    
        :param: set A character set containing the characters to ermove from the receiver. set must not be nil.
    
        :returns: A new string made by keeping only the characters contained in set.
    */
    func stringByKeepingOnlyCharactersInSet(set: NSCharacterSet) -> String {
        
        return self.stringByRemovingCharactersInSet(set.invertedSet)
    }
    
    
    /**
        Returns a new string made by removing the character at a given index.
    
        :param: index The index of the character to be removed. 0 represents the first character.
    
        :returns: A new string made by removing from the receiver the character at a given index.
    */
    func stringByRemovingCharacterAtIndex(index: Int) -> String {
        
        var selfByCharacters = Array(self)
        
        selfByCharacters.removeAtIndex(index)
        
        return String(selfByCharacters)
    }
    
    
    /**
        Returns a new string made by removing the characters at given indexes.
    
        :param: indexes An array of indexes of characters to be removed. 0 represents the first character.
        
        :returns: A new string made by removing from the receiver the characters at given indexes.
    */
    func stringByRemovingCharactersAtIndexes(indexes: [Int]) -> String {
        
        var selfByCharacters = Array(self)
        
        selfByCharacters.removeAtIndexes(indexes)
        
        return String(selfByCharacters)
    }
}