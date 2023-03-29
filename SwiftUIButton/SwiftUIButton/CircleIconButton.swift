//
//  CircleIconButton.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct CircleIconButton: View {
    let symbolName: String
    var backgroundColor: Color = .blue
    var foreGroundColor: Color = .white
    var action: (()->()?)? = nil
    
    var body: some View {
        Button(action: {
            if let action{
                action()
            }
        }) {
            Image(systemName: symbolName)
                .padding()
                .background(backgroundColor)
                .font(.largeTitle)
                .foregroundColor(foreGroundColor)
        }
        .buttonStyle(CircleButtonStyle())
    }
}

struct CircleIconButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleIconButton(symbolName: "trash", action: {})
    }
}
