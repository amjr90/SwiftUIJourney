//
//  StyledButton.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 29/03/23.
//

import SwiftUI

struct StyledButton: View {
    let text: String
    var symbolName: String = ""
    var action: (()->()?)? = nil
    
    var body: some View {
        Button {
            if let action{
                action()
            }
        } label: {
            Label(
                title: {
                    Text(text)
                        .fontWeight(.semibold)
                        .font(.title)
                },
                icon: {
                    Image(systemName: symbolName)
                        .font(.title)
                }
            )
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}

struct StyledButton_Previews: PreviewProvider {
    static var previews: some View {
        StyledButton(text: "button")
    }
}
