//
//  ContentView.swift
//  RandomQuoteApp
//
//  Created by Alperen Tunç on 19.01.2026.
//

import SwiftUI

struct QuoteTextStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .padding()
    }
}
extension View{
    func quoteStyle() -> some View{
        modifier(QuoteTextStyle())
    }
}
struct ContentView: View {
    @State private var currentQuote : Quote = Quote.mockQuotes.randomElement()!
    var body: some View {
        VStack(spacing: 24){
            Text("“\(currentQuote.text)”")
                .id(currentQuote.id)
                .quoteStyle()
            Text("- \(currentQuote.author)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button("New Quote"){
                withAnimation{
                    pickRandomQuote()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.indigo)
        }
        .padding()
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 10)
    }
    func pickRandomQuote(){
        currentQuote = Quote.mockQuotes.randomElement()!
    }
}

#Preview {
    ContentView()
}
