//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by andres jaramillo on 25/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                HeaderView()
                Spacer()
            }
            HStack {
                CardView(titleText: "Basic", priceText: "$9", anotherText: "per month", cardColor: .purple, icon: nil)
                ZStack {
                    CardView(titleText: "Pro", priceText: "$19", anotherText: "per month", cardColor: .gray, icon: nil)
                    LabelText(text: "Best for designer")
                        .offset(x: 0, y: 87)
                }
            }
            ZStack {
                CardView(titleText: "Pro", priceText: "$19", anotherText: "per month", cardColor: .gray, icon: Image(systemName: "wand.and.rays"))
                LabelText(text: "Perfect for teams with 20 members")
                    .offset(x: 0, y: 110)
            }
            Spacer()
        }
        .padding(.horizontal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


