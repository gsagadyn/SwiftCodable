//
//  KeyedDecodingContainer+Failable.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

extension KeyedDecodingContainer {
    public func decode<T>(_ type: [T].Type, forKey key: KeyedDecodingContainer<K>.Key, failable: Bool) throws -> [T] where T: Decodable {
        guard failable else { return try decode([T].self, forKey: key) }
        typealias ModelArray = FailableDecodableArray<T>
        return try decode(ModelArray.self, forKey: key).elements
    }
}
