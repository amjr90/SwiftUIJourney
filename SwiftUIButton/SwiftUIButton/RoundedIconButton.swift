//
//  RoundedIconButton.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI


struct RoundedIconButton: View {
    let text: String
    var symbolName: String = "trash"
    var foregroundColor: Color = .white
    var backgroundColor: Color = .blue
    var action: (()->()?)? = nil
    var body: some View {
        Button{
            if let action{
                action()
            }
        }label: {
            Label(text, systemImage: symbolName)
            .padding()
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .font(.title)
            .fontWeight(.semibold)
            .cornerRadius(40)
        }
    }
}

struct RoundedIconButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedIconButton(text: "button")
    }
}
