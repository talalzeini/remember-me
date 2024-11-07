//
//  QuoteViewModel.swift
//  RememberMe
//
//  Created by Talal El Zeini on 9/18/24.
//

import SwiftUI
import Foundation
import Combine

class QuoteViewModel: ObservableObject {
    @Published var quotes: [Quote] = [
        Quote(text: "The best way to predict the future is to invent it."),
        Quote(text: "Life is 10% what happens to us and 90% how we react to it."),
        Quote(text: "Success is not final, failure is not fatal: It is the courage to continue that counts."),
        Quote(text: "Believe you can and you're halfway there."),
        Quote(text: "Don't watch the clock; do what it does. Keep going."),
        Quote(text: "The only way to do great work is to love what you do."),
        Quote(text: "The harder you work for something, the greater you’ll feel when you achieve it."),
        Quote(text: "Dream big and dare to fail."),
        Quote(text: "Success is going from failure to failure without losing your enthusiasm."),
        Quote(text: "What we think, we become.")
    ]

    init() {
        loadQuotes()
        quotes.shuffle()
    }

    func addQuote(text: String) {
        let newQuote = Quote(text: text)
        quotes.append(newQuote)
        saveQuotes()
    }

    func shuffleQuotes() {
        quotes.shuffle()
    }

    private func saveQuotes() {
        if let encoded = try? JSONEncoder().encode(quotes) {
            UserDefaults.standard.set(encoded, forKey: "UserQuotes")
        }
    }

    private func loadQuotes() {
        if let savedQuotes = UserDefaults.standard.data(forKey: "UserQuotes"),
           let decodedQuotes = try? JSONDecoder().decode([Quote].self, from: savedQuotes) {
            quotes = decodedQuotes
            quotes.shuffle()
        }
    }
}

