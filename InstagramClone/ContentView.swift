//
//  ContentView.swift
//  InstagramClone
//
//  Created by mhcz on 31.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}
// main 1
// main 2
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// global values

var rect = UIScreen.main.bounds
var edges = UIApplication.shared.windows.first?.safeAreaInsets
