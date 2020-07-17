//
//  mainView.swift
//  SwiftUITest
//
//  Created by Søren Clausen on 12/07/2020.
//  Copyright © 2020 Søren Clausen. All rights reserved.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationView{
            programList()
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
