//
//  UnkeyedDecodingContainer+Failable.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

extension UnkeyedDecodingContainer {
    public mutating func decode<T>(_ type: [T].Type, failable: Bool) throws -> [T] where T: Decodable {
        guard failable else { return try decode([T].self) }
        typealias ModelArray = FailableDecodableArray<T>
        return try decode(ModelArray.self).elements
    }
}
