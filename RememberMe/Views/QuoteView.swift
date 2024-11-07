//
//  QuoteView.swift
//  RememberMe
//
//  Created by Talal El Zeini on 9/18/24.
//

import SwiftUI

class ColorTheme: ObservableObject {
    @Published var isDarkMode: Bool = false
}

struct QuoteView: View {
    @StateObject private var viewModel = QuoteViewModel()
    @StateObject private var colorTheme = ColorTheme()
    @State private var showingAddQuote = false
    
    
    var body: some View {
        NavigationView {
            ScrollViewReader { scrollProxy in
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0..<viewModel.quotes.count, id: \.self) { index in
                            QuoteCard(quote: viewModel.quotes[index % viewModel.quotes.count], isDarkMode: colorTheme.isDarkMode)
                                .edgesIgnoringSafeArea(.all)
                        }
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.paging)
                .edgesIgnoringSafeArea(.all)
            }
            .navigationBarItems(
                leading: Button(action: {
                    colorTheme.isDarkMode.toggle()
                }) {
                    Image(systemName: colorTheme.isDarkMode ? "moon.fill" : "moon")
                        .foregroundColor(colorTheme.isDarkMode ? .white : .black)
                },
                trailing: Button(action: {
                    showingAddQuote = true
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(colorTheme.isDarkMode ? .white : .black)
                })
            .sheet(isPresented: $showingAddQuote) {
                AddQuoteView(viewModel: viewModel)
                    .presentationDetents([.fraction(0.2)])
            }
            .environmentObject(colorTheme)
            .background(colorTheme.isDarkMode ? .black : .white)
            .scrollContentBackground(.hidden)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct QuoteCard: View {
    var quote: Quote
    var isDarkMode: Bool
    
    var body: some View {
        Rectangle()
            .fill(isDarkMode ? Color.black : Color.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .containerRelativeFrame([.horizontal, .vertical])
            .overlay {
                Text("\(quote.text)")
                    .foregroundColor(isDarkMode ? .white : .black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, maxHeight: .infinity)
            }
    }
}
