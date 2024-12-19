//
//  emoji.swift
//  Table Views
//
//  Created by Batch - 1 on 09/12/24.
//

import Foundation

struct Emoji{
    var symbol : String
    var name : String
    var description : String
    var usage : String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
