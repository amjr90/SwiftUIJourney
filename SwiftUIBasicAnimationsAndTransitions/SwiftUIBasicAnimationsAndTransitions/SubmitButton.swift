//
//  SubmitButton.swift
//  SwiftUIBasicAnimationsAndTransitions
//
//  Created by andres jaramillo on 10/04/23.
//

import SwiftUI

struct SubmitButton: View {
    @State var loading = false
    @State var done = false
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .foregroundColor(done ? .red : .green)

                HStack (spacing: 0) {
                    if loading && !done{
                        RotatingCircle()
                            .frame(width: 25, height: 25)
                    }
                    Text(done ? "Done" : (loading ? "Processing" : "Submit") )
                        .foregroundColor(.white)
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .padding()
                        .cornerRadius(40)
                }
                .padding(.horizontal)
            }
            
            .fixedSize()
            
            .onTapGesture {
                startProcessing()
            }
        }
    }
    
    private func startProcessing(){
        if loading || done {return}
        
        withAnimation {
            loading = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            withAnimation {
                done = true
                reset()
            }
        }
    }
    
    private func reset(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            withAnimation {
                loading = false
                done = false
            }
        }
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton()
    }
}

struct RotatingCircle: View {
    @State var isLoading = false
    var body: some View{
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(Color.white, lineWidth: 4)
            .rotationEffect(Angle(degrees: isLoading ? 0 : 360))
            .animation(.linear(duration: 0.5).repeatForever(autoreverses: false), value: isLoading)
            .onAppear(){
                isLoading = true
            }
    }
}
