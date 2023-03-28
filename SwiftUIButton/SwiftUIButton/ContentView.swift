//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            RoundedButton(text: "button") {
                print("rounded button")
            }
            
            CircleIconButton(symbolName: "trash")
            
            RoundedIconButton(text: "button")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

