//
//  CardModel.swift
//  prewords
//
//  Created by Damon Wu on 26/7/2023.
//

import Foundation
import SwiftUI

// Just for Study ONLY

struct Card {
    let title: String
    let description: String
    let theme: Color
}

extension Card {
    static let sampleData: [Card] = [
        Card(title: "Mock title", description: "MockDescription", theme: Color(.green)),
        Card(title: "Mock title2", description: "MockDescription2", theme: Color(.blue)),
    ]
}
