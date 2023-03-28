//
//  CardView.swift
//  SwiftUIStacks
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct CardView: View {
    let titleText: String
    let priceText: String
    let anotherText: String
    let cardColor: Color
    let icon: Image?
    
    var body: some View {
        VStack{
            icon
            .font(.largeTitle)
            .foregroundColor(.white)
            Text(titleText)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            Text(priceText)
                .font(.system(size: 40, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            Text(anotherText)
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(cardColor)
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titleText: "test", priceText: "$0", anotherText: "test", cardColor: .pink, icon: nil)
    }
}
