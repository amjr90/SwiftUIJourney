//
//  ContentView.swift
//  SwiftUIState
//
//  Created by andres jaramillo on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    @State private var blueCounter = 0
    @State private var greenCounter = 0
    @State private var redCounter = 0
    
    var body: some View {
        VStack {
            Text("\(blueCounter + greenCounter + redCounter)")
                .font(.system(size: 200, weight: .bold, design: .rounded))
            HStack {
                CounterButton(counter: $blueCounter, color: .blue)
                CounterButton(counter: $greenCounter, color: .green)
                CounterButton(counter: $redCounter, color: .red)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    var color: Color
    
    var body: some View {
        Button {
            counter+=1
        } label: {
            Circle()
                
                .foregroundColor(color)
                .overlay{
                    Text("\(counter)")
                        .font(.system(size: 60, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
        }
    }
}
