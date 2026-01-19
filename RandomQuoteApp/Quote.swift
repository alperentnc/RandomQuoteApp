//
//  Quote.swift
//  RandomQuoteApp
//
//  Created by Alperen Tunç on 19.01.2026.
//

import Foundation

struct Quote: Identifiable{
    let id = UUID()
    var text: String
    var author: String
}

extension Quote{
    static let mockQuotes: [Quote] = [
        Quote(text: "Stay hungry, stay foolish.", author: "Steve Jobs"),
        Quote(text: "Simplicity is the ultimate sophistication.", author: "Leonardo Da Vinci"),
        Quote(text: "Code is like humor. When you have to explain it, it’s bad.", author: "Cory House")
    ]
}
