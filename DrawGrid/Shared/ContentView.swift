//
//  ContentView.swift
//  Shared
//
//  Created by Mihaela Mihaljevic Jakic on 01.06.2021..
//

import SwiftUI
import GridProperties
import GridViewSwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        GridViewSwiftUI(properties: GridProperties.`default`)
      }.frame(width: 400, height: 400, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
