//
//  CircleButtonStyle.swift
//  SwiftUIButton
//
//  Created by andres jaramillo on 29/03/23.
//

import SwiftUI

struct CircleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ?  Angle(degrees: 90) : Angle(degrees: 0))
    }
}


