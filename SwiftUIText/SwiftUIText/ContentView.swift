//
//  ContentView.swift
//  SwiftUIText
//
//  Created by andres jaramillo on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most impo rtant, have the courage to follow your heart and intuition.")
                .fontWeight(.bold)
                .font(.custom("Nunito", size: 25))
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .truncationMode(.head)
                .lineSpacing(10)
                .shadow(radius: 2, x: 0, y: 15)
                .padding()
            
            Text("**This is how you bold a text**. *This is how you make text italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
            .font(.title)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
