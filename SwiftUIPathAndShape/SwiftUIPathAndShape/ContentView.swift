//
//  ContentView.swift
//  SwiftUIPathAndShape
//
//  Created by andres jaramillo on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //            RectangleShape()
        //            DomeRectangleShape()
        PieChart()
        
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
