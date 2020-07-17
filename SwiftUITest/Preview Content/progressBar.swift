//
//  progressBar.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 17/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct progressBar: View {
    var progress: Float
    var color: Color
    
    var body: some View {
        ZStack {
           Circle()
               .stroke(lineWidth: 20.0)
               .opacity(0.3)
               .foregroundColor(Color.gray)
           
           Circle()
               .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
               .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
               .foregroundColor(self.color)
               .rotationEffect(Angle(degrees: 270.0))
               .animation(.interpolatingSpring(stiffness: 80.0, damping: 15.0))
        }
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        progressBar(progress: 10.0, color: Color.green)
    }
}
