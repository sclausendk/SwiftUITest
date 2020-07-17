//
//  detailView.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 12/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct detailView: View {
    @State var degrees = 0.0;
    @State var opacity = 0.0;
    @State var progressValue1: Float = 0.0
    @State var progressValue2: Float = 0.0
    @State var progressValue3: Float = 0.0
    
    var body: some View {
        VStack{
            
            Spacer()
            
            ZStack{
                progressBar(progress: progressValue1, color: Color.blue)
                .frame(width: 240.0, height: 240.0)
                .padding(60.0)
                
                progressBar(progress: progressValue2, color: Color.red)
                .frame(width: 180.0, height: 180.0)
                .padding(60.0)
                
                progressBar(progress: progressValue3, color: Color.green)
                .frame(width: 120.0, height: 120.0)
                .padding(60.0)
            }
            .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 0, z: 0))
            .opacity(opacity)
            .animation(.interpolatingSpring(stiffness: 80.0, damping: 15.0))
            
            
            
            Spacer()
           Button(action: {
               self.show()
           }) {
               Text("Show")
           }
           
           Spacer()

            Button(action: {
                self.reset()
            }) {
                Text("Hide")
            }
            Spacer()
//            Slider(value: $degrees, in: 0...1, step: 0.1)
        }
        
    }
    func show(){
        opacity = 1.0
        
        skewCircle()
        changeValue()
    }
    
    func skewCircle(){
        degrees = 70.0
    }
    
    
    func reset(){
        degrees = 0.0
        progressValue1 = 0.0
        progressValue2 = 0.0
        progressValue3 = 0.0
        opacity = 0.0
    }
    func changeValue(){
        progressValue1 = 0.58
        progressValue2 = 0.45
        progressValue3 = 0.25
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView()
    }
}
