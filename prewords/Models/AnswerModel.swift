//
//  Answer.swift
//  prewords
//
//  Created by Damon Wu on 3/7/2023.
//

import Foundation

struct Answer: Codable {
    let guaName: String
    let yaoName: String
    let guaCiWord: String
    let yaoCiWord: String
    let tuanCi: String
    let daXiang: String
    let xiaoXiang: String
    let references: [String]
}
