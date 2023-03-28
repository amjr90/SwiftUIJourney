//
//  HeaderView.swift
//  SwiftUIScrollView
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct HeaderView: View {
    var date: String?
    var title: String
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                if let date {
                    Text(date)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Text(title)
                    .font(.system(.largeTitle, design: .rounded, weight: .heavy))
            }
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(date: "Monday", title: "Title")
    }
}
