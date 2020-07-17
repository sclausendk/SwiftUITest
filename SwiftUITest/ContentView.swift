//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 11/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Text("Label")
                    .font(.headline)
                HStack{
                    Text("Meta")
                    Text("Aux")
                }
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 16.0){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
        .padding(.horizontal, 16.0)
        .padding(/*@START_MENU_TOKEN@*/.vertical, 8.0/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
