//
//  AddQuoteView.swift
//  RememberMe
//
//  Created by Talal El Zeini on 9/18/24.
//

import SwiftUI

struct AddQuoteView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: QuoteViewModel
    @State private var quoteText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter your quote", text: $quoteText)
                        .padding()
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(10)
                        .accentColor(.black)
                    
                    Button(action: addQuote) {
                        Text("+")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 50, height:50)
                    }
                    .background(Color.black)
                    .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
            .navigationBarItems(leading: Button(action: {
                dismiss()
            }) {
                Text("Cancel")
                    .foregroundColor(.black)
            }
            )
        }
    }
    
    private func addQuote() {
        viewModel.addQuote(text: quoteText)
        dismiss()
    }
}
