//
//  FailableDecodableArray.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

public struct FailableDecodableArray<Element: Decodable>: Decodable {
    // MARK: - Public Properties
    
    public let elements: [Element]
    
    // MARK: - Initialization
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var elements = [Element]()
        
        if let count = container.count {
            elements.reserveCapacity(count)
        }
        
        while !container.isAtEnd {
            let element = try container.decode(FailableDecodable<Element>.self)
            let result = try? element.result.get()
            result.map { elements.append($0) }
        }
        
        self.elements = elements
    }
}
