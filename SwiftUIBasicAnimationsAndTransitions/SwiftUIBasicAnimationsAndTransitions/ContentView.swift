//
//  ContentView.swift
//  SwiftUIBasicAnimationsAndTransitions
//
//  Created by andres jaramillo on 30/03/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack (spacing:30){
            HearthButton()
            CircularLoadingView()
            HorizontalLoadingView()
            ProgressIndicatorView(progress: 0.0)
            DotsProgressIndicator()
            MorphingButton()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HearthButton: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
            Image(systemName: "heart.fill")
                .foregroundColor(heartColorChanged ? .red : .white)
                .font(.system(size: 69))
                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                self.circleColorChanged.toggle()
                self.heartColorChanged.toggle()
                self.heartSizeChanged.toggle()
            }
        }
    }
}

struct CircularLoadingView: View {
    @State private var isLoading = false
    var body: some View{
        ZStack {
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 15)
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.green, lineWidth: 5)
                .rotationEffect(Angle(degrees: isLoading ? 0 : 360))
                .animation(.linear(duration: 0.5).repeatForever(autoreverses: false), value: isLoading)
                .onAppear(){
                    isLoading = true
                }
        }
        .frame(width: 50, height: 50)
    }
}

struct HorizontalLoadingView: View {
    @State private var isLoading = false
    
    var body: some View{
        VStack {
            Text("Loading...")
                .fontWeight(.medium)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemGray5))
                RoundedRectangle(cornerRadius: 10)
                    .fill(.green)
                    .frame(width: 40)
                    .scaleEffect(0.8)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isLoading)
                    .offset(x: isLoading ? 320 : 0)
                
            }
            .frame(height: 20)
            .padding(.horizontal)
            .onAppear(){
                isLoading = true
            }
        }
    }
}

struct ProgressIndicatorView: View {
    @State var progress: CGFloat = 0.0
    
    var body: some View{
        ZStack {
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 15)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.green, lineWidth: 15)
                .rotationEffect(Angle(degrees: -90))
                .animation(.linear(duration: 0.5), value: progress)
            Text("\(Int(progress * 100))%")
                .font(.system(.title, design: .rounded))
                .bold()
        }
        .frame(width: 150, height: 150)
        .onAppear(){
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                self.progress += 0.05
                if self.progress >= 1.0{
                    progress = 0.0
                }
            }
        }
    }
}

struct DotsProgressIndicator: View {
    @State private var isLoading = false
    @State var dotsNumber: Int = 5
    
    var body: some View{
        ZStack {
            HStack{
                ForEach(0...dotsNumber-1, id: \.self){ index in
                    Circle()
                        .fill(.green)
                        .frame(width: 10, height: 10)
                        .scaleEffect(self.isLoading ? 0.3 : 1)
                        .animation(.linear(duration: 0.6).repeatForever().delay(0.2 * Double(index)), value: isLoading)
                }
            }
            .onAppear(){
                isLoading = true
            }
        }
    }
}

struct MorphingButton: View {
    @State var recordBegin = false
    @State var recording = false
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: recordBegin ? 25 : 10)
                .fill(recordBegin ? .red : .green)
                .frame(width: recordBegin ? 50 : 200, height: 50)
            
            Image(systemName: "mic.fill")
                .foregroundColor(.white)
                .bold()
                .scaleEffect(recording ? 0.7 : 1)
            
            RoundedRectangle(cornerRadius: recordBegin ? 25 : 10)
                .trim(from: 0, to: recordBegin ? 0.0001 : 1)
                .stroke(lineWidth: 5)
                .fill(recordBegin ? .red : .green)
                .frame(width: recordBegin ? 50 : 210, height: 60)
        }
        
        .onTapGesture {
            withAnimation(.spring()) {
                self.recordBegin.toggle()
                
            }
            
            withAnimation(.spring().repeatForever().delay(0.5)) {
                self.recording.toggle()
            }
        }
    }
}
