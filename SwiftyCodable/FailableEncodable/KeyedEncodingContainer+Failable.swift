//
//  KeyedEncodingContainer+Failable.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

extension KeyedEncodingContainer {
    public mutating func encode<T>(_ value: [T], forKey key: KeyedEncodingContainer<K>.Key, failable: Bool) throws where T: Encodable {
        guard failable else { try encode(value, forKey: key) ; return }
        let array = FailableEncodableArray(elements: value)
        try encode(array, forKey: key)
    }
}
