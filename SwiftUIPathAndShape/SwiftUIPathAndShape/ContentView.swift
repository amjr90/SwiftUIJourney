//
//  ContentView.swift
//  SwiftUIPathAndShape
//
//  Created by andres jaramillo on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255,blue: 179/255) ]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        Circle()
            .stroke(Color(.systemGray6), lineWidth: 20)
            .frame(width: 300, height: 300)
            .overlay {
                Circle()
                    .trim(from: 0, to: 0.4)
                    .stroke(purpleGradient, lineWidth: 10)
                    .rotationEffect(Angle(degrees: 180))
                    .overlay {
                        VStack {
                            Text("85%")
                                .font(.system(size: 80, weight: .bold, design: .rounded))
                                .foregroundColor(.gray)
                            Text("Complete")
                                .font(.system(.body, design: .rounded))
                                .bold()
                                .foregroundColor(.gray)
                        }
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RectangleShape: View {
    var body: some View {
        Path(){ path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.closeSubpath()
        }
        .stroke(.green, lineWidth: 10)
    }
}

struct DomeRectangleShape: View {
    var body: some View {
        ZStack {
            Path(){path in
                path.move(to: CGPoint(x: 20, y: 60))
                path.addLine(to: CGPoint(x: 40, y: 60))
                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 100))
                path.addLine(to: CGPoint(x: 20, y: 100))
            }
            .fill(.purple)
            
            Path(){path in
                path.move(to: CGPoint(x: 20, y: 60))
                path.addLine(to: CGPoint(x: 40, y: 60))
                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 100))
                path.addLine(to: CGPoint(x: 20, y: 100))
                path.closeSubpath()
            }
            .stroke(.black, lineWidth: 3)
        }
    }
}

struct PieChart: View {
    var body: some View {
        ZStack {
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 100, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
            }
            .fill(.yellow)
            
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 100, startAngle: .degrees(180), endAngle: .degrees(100), clockwise: true)
            }
            .fill(.cyan)
            
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 100, startAngle: .degrees(100), endAngle: .degrees(70), clockwise: true)
            }
            .fill(.blue)
            
            Path(){path in
                path.move(to: CGPoint(x: 210, y: 205))
                path.addArc(center: CGPoint(x: 210, y: 205), radius: 100, startAngle: .degrees(70), endAngle: .degrees(0), clockwise: true)
            }
            .fill(.purple)
            .shadow(radius: 10)
            .overlay {
                Text("%25")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .offset(x: 70, y: -140)
                
            }
        }
    }
}

struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(
            x: rect.size.width/2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        return path
    }
}
