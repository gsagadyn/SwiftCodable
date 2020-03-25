//
//  ModelList.swift
//  SwiftyCodable_Example
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import SwiftyCodable

class ModelList: Decodable {
    let items: [Model]
    
    internal enum CodingKeys: String, CodingKey {
        case items
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        items = try container.decode([Model].self, forKey: .items, failable: true)
    }
}

extension ModelList: CustomStringConvertible {
    var description: String {
        items.map(\.description).joined(separator: "\n")
    }
}
