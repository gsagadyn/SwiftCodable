//
//  SingleValueEncodingContainer+Failable.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

extension SingleValueEncodingContainer {
    public mutating func encode<T>(_ value: [T], failable: Bool) throws where T: Encodable {
        guard failable else { try encode(value) ; return }
        let array = FailableEncodableArray(elements: value)
        try encode(array)
    }
}
