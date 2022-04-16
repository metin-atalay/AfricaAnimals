//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: PROPERTIES
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    //MARK: - FUNC
    
    //1. RANDOM CROORDINATE
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    // 2. RANDOM SIZE
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    // 3. Random Scale
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. RANDOM SPEED
    
    func randomSpeed() -> Double {
        Double.random(in: 0.025...1.0)
    }
    
    // 5. Random Delay
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    //MARK: BODY
    var body: some View {
        GeometryReader { geomerty in
            ZStack {
                ForEach(0 ..< randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(randomScale())
                        .position(x: randomCoordinate(max: geomerty.size.width),
                              y: randomCoordinate(max: geomerty.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay()), value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }
                
               // Text("Width: \(Int(geomerty.size.width)) Height \(Int(geomerty.size.height))")
            } // ZStack
            .drawingGroup()
        }//: GeometryReader
    }
}

//MARK: PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
