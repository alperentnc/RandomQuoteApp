//
//  ContentView.swift
//  RandomQuoteApp
//
//  Created by Alperen Tunç on 19.01.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var currentQuote : Quote = Quote.mockQuotes.randomElement()!
    var body: some View {
        VStack(spacing: 24){
            Text("“\(currentQuote.text)”")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Text("- \(currentQuote.author)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button("New Quote"){
                currentQuote = Quote.mockQuotes.randomElement()!
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
