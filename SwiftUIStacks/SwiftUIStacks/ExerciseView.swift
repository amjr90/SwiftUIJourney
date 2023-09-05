//
//  Exercise.swift
//  SwiftUIStacks
//
//  Created by andres jaramillo on 28/03/23.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        ZStack{
            CardView(titleText: "Basic", priceText: "$9", anotherText: "per month", cardColor: .purple, icon: Image(systemName: "wand.and.rays"))
                .offset(x: 0, y: 190)
            
            CardView(titleText: "Pro", priceText: "$19", anotherText: "per month", cardColor: .yellow, icon: Image(systemName: "wand.and.rays"))
                .scaleEffect(0.95)
            
            CardView(titleText: "Team", priceText: "$299", anotherText: "per month", cardColor: .gray, icon: Image(systemName: "wand.and.rays"))
                .scaleEffect(0.9)
                .offset(x: 0, y: -190)
            
            
        }
        .padding()
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
