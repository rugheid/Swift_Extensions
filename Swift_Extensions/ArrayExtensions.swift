//
//  ArrayExtensions.swift
//  Swift_Extensions
//
//  Created by Rugen Heidbuchel on 27/10/14.
//  Copyright (c) 2014 Jorestha Solutions. All rights reserved.
//

import Foundation

extension Array {
    
    // MARK: Subscript
    
    // Get or set the elements of the given indexes.
    subscript(indexes: [Int]) -> [T] {
        
        get {
            
            var elements = [T]()
            
            for index in indexes {
                
                elements.append(self[index])
            }
            
            return elements
        }
        
        set {
            
            for (i, index) in enumerate(indexes) {
                
                self[index] = newValue[i]
            }
        }
    }
    
    // MARK: Mutation
    
    /**
        Removes the elements at the given indexes and returns them.
    
        :param: indexes An array containing the indexes of elements to remove.
    
        :returns: The elements removed from the receiver.
    */
    mutating func removeAtIndexes(indexes: [Int]) -> [T] {
        
        let sortedIndexes = indexes.sorted { $0 > $1 }
        
        var removedElements = [T]()
        
        for index in sortedIndexes {
            
            removedElements.insert(self.removeAtIndex(index), atIndex: 0)
        }
        
        return removedElements
    }
}