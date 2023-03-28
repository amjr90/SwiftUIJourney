//
//  HeaderView.swift
//  SwiftUIStacks
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            Text("Your plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
