//
//  LabelText.swift
//  SwiftUIStacks
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct LabelText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(5)
            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            
    }
}

struct LabelText_Previews: PreviewProvider {
    static var previews: some View {
        LabelText(text: "this is a test")
    }
}
