//
//  CardTransitions.swift
//  SwiftUIBasicAnimationsAndTransitions
//
//  Created by andres jaramillo on 13/04/23.
//

import SwiftUI

struct CardTransitions: View {
    @State var index = 0
    var body: some View {
        VStack{
            HeaderView(date: "Monday, aug 20", title: "Your Reading")
            switch index{
            case 0:
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
            case 1:
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
            case 2:
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
            case 3:
                CardView(image: "natural-language-api", category: "iOS", heading: "What's Newin Natural Language API", author: "Sai Kambampati")
                
            default:
                EmptyView()
            }
            
            Spacer()
        }
        .padding()
        .onTapGesture {
            withAnimation {
                index += 1
            }
        }
    }
}

struct CardTransitions_Previews: PreviewProvider {
    static var previews: some View {
        CardTransitions()
    }
}
