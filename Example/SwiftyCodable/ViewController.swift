//
//  ViewController.swift
//  SwiftyCodable
//
//  Created by Grzegorz Sagadyn on 03/25/2020.
//

import UIKit
import SwiftyCodable

class ViewController: UIViewController {
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var outputTextView: UITextView!
    
    @IBAction func decodeAction(_ sender: Any) {
        guard let data = inputTextView.text.data(using: .utf8) else {
            return
        }
        
        let decoder = JSONDecoder()
        let result = try? decoder.decode(ModelList.self, from: data)
        
        outputTextView.text = result?.description ?? "empty"
    }
}

