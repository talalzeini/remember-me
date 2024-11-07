//
//  QuoteModel.swift
//  RememberMe
//
//  Created by Talal El Zeini on 9/18/24.
//

import Foundation

struct Quote: Identifiable, Codable {
    var id = UUID()
    let text: String
}

