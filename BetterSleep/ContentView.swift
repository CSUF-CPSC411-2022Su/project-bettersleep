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
            Text("I plan to fall asleep at...")
                .padding()
                .offset(y: -150)
            Button("Calculate") { }
                .offset(y: 150)
                .buttonStyle(.borderedProminent)
        }
    
        HStack {
            Button("Hour") { }
            Button("Minute") { }
            Button("AM/PM") { }
            
        }
        .buttonStyle(.bordered)
        .offset(y: -50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


