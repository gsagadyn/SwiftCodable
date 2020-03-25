//
//  FailableDecodable.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//

import Foundation

public struct FailableDecodable<T: Decodable>: Decodable {
    // MARK: - Public Properties
    
    public let result: Result<T, Error>
    
    // MARK: - Initialization
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.result = Result(catching: { try container.decode(T.self) })
    }
}
