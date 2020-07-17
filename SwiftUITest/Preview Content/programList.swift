//
//  programList.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 12/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct programList: View {
    var body: some View {
        NavigationView{
        List {
            programListItem(label: "This will not be an accordion because action is required. The 'section' will present a list of alerts in date descending order, showing t", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
            programListItem(label: "Test", meta: "Test", aux: "Test")
        }
            .navigationBarTitle(Text("Events"), displayMode: .large)
    
        }
        .navigationBarTitle(Text("Events"), displayMode: .large)
    }
    
}

struct programList_Previews: PreviewProvider {
    static var previews: some View {
        programList()
    }
}
