//
//  programListItem.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 12/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct programListItem: View {
    @State private var showModal: Bool = false
    
    var label: String
    var meta: String
    var aux: String
    
    var body: some View {
         HStack(alignment: .top){
           VStack(alignment: .leading){
               Text(label)
                .font(.headline)
                .lineLimit(3)
                .truncationMode(.tail)
            
            HStack(spacing: 6.0){
                Text(meta)
                Text(aux)
               }.font(.body)
                .padding(.top, 4.0)
           }
           Spacer()
            
            //Right side Action
                Button(action:{}) {
                     Text("Button")
                }

           }
           .padding(.vertical, 8.0)
    }
}

struct programListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //Real data
            programListItem(label: "This will not be an accordion because action is required. The 'section' will present a list of alerts in date descending order, showing t", meta: "Fra Kåre", aux: "Monday, November 21, 2019")
            
            programListItem(label: "lskdflakjfslk", meta: "læaskjdlakdj", aux: "alskdjlaksjd")
            
            //Not real data
            programListItem(label: "Test", meta: "", aux: "Test")
            
            //Not real data
            programListItem(label: "alsjkdhlajsdlakjsd", meta: "alkdsjlaksjd", aux: "aslkdjlasdjlaksjd")
        }
        .previewLayout(.fixed(width: 375, height: 64))
    }
}
