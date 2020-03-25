//
//  Model.swift
//  SwiftyCodable_Example
//
//  Created by Grzegorz Sagadyn on 25/03/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

struct Model: Decodable {
    let field: String
}

extension Model: CustomStringConvertible {
    var description: String {
        field
    }
}
