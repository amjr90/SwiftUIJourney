//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                RoundedButton(text: "button") {
                    print("rounded button")
                }
                
                CircleIconButton(symbolName: "trash")
                
                RoundedIconButton(text: "button")
                
                GradientButton(text: "button", symbolName: "circle.fill", colors: [.blue, .green],startPoint: .topLeading, endPoint: .bottomTrailing, shadow: true, maxWidth: .infinity)
                
                StyledButton(text: "button", symbolName: "circle")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button(action: {}) {
                            Text("Add to Cart")
                                .font(.headline)
                        }
                        Button(action: {}) {
                            Text("Discover")
                                .font(.headline)
                        }
                        Button(action: {}) {
                            Text("Check out")
                                .font(.headline)
                        }
                    }
                    .tint(.purple)
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                
                Button("Delete", role: .destructive) {
                    print("Delete")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

