//
//  RoundedButton.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct RoundedButton: View {
    let text: String
    var foregroundColor: Color = .white
    var backgroundColor: Color = .blue
    var action: (()->()?)? = nil
    
    var body: some View {
        Button {
            if let action{
                action()
            }
        } label: {
            Text(text)
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(backgroundColor)
                .cornerRadius(40)
                .foregroundColor(foregroundColor)
                .padding(10)
                .overlay{RoundedRectangle(cornerRadius: 40).stroke(backgroundColor, lineWidth: 5)}
            
        }
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(text: "button", action: {})
    }
}
