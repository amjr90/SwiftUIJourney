//
//  SimpleTransition.swift
//  SwiftUIBasicAnimationsAndTransitions
//
//  Created by andres jaramillo on 10/04/23.
//

import SwiftUI

struct SimpleTransition: View {
    @State private var showDetails = false
    var body: some View {
        VStack{
            ViewWithText(text: "Show details")
            if showDetails{
                ViewWithText(backgroundColor: .purple, text: "Well, here is the details")
                    .transition(.scaleAndOffset)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                self.showDetails.toggle()
            }
        }
    }
}

struct SimpleTransition_Previews: PreviewProvider {
    static var previews: some View {
        SimpleTransition()
    }
}

struct ViewWithText: View {
    var width: CGFloat = 300
    var height: CGFloat = 300
    var backgroundColor: Color = .green
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: width, height: height)
            .foregroundColor(backgroundColor)
            .overlay {
                Text(text)
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
            }
    }
}

extension AnyTransition{
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x: -600, y: 0).combined(with: .scale).combined(with: .opacity)
    }
}

extension AnyTransition {
    static var scaleAndOffset: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .scale(scale: 0, anchor: .bottom),
            removal: .offset(x: -600, y: 0)
        )
    }
}
