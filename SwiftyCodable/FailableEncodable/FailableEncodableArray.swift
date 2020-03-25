//
//  FailableEncodableArray.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

public struct FailableEncodableArray<Element: Encodable>: Encodable {
    // MARK: - Public Properties
    
    public let elements: [Element]
    
    // MARK: - Encode
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        elements.forEach { try? container.encode($0) }
    }
}
