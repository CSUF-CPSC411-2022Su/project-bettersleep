//
//  ContentView.swift
//  BetterSleep
//
//  Created by Nazeri, Daniel on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Z Z Z . . .")
                .padding()
            ZStack {
                Circle()
                Text("You have slept for x Hours").foregroundColor(.blue)
            }
            Text("Tap Anywhere to wake up . . .").foregroundColor(.blue)
        }
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
