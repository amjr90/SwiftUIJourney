//
//  GradientButton.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct GradientButton: View {
    let text: String
    var symbolName: String = ""
    var foregroundColor: Color = .white
    var backgroundColor: Color = .blue
    var action: (()->()?)? = nil
    var colors: [Color] = [.red, .blue]
    var startPoint: UnitPoint = .leading
    var endPoint: UnitPoint = .trailing
    var shadow: Bool = false
    var minWidth: CGFloat = 0
    var maxWidth: CGFloat? = .none
    
    var body: some View {
        Button{
            if let action{
                action()
            }
        }label: {
            Label(text, systemImage: symbolName)
                .frame(minWidth: minWidth, maxWidth: maxWidth)
                .padding()
                .foregroundColor(foregroundColor)
                .background(LinearGradient(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint))
                .font(.title)
                .fontWeight(.semibold)
                .cornerRadius(40)
        }
        .shadow(radius: shadow ? 5 : 0)
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(text: "button")
    }
}
