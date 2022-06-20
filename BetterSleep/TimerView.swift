//
//  ContentView.swift
//  BetterSleep
//
//  Created by Immanuel Sotelo on 6/8/22.
//

import SwiftUI

struct TimerView: View {
    @StateObject var timer = SleepTimer(timeGoal: 8.0)
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Z Z Z . . .")
                    .padding()
                ZStack {
                    Circle()
                    Text("You have slept for \(timer.timeSlept) Hours").foregroundColor(.blue)
                }
                NavigationLink(destination: AwakeView()) {
                    
                    Text("Tap Here to wake up . . .").foregroundColor(.blue)
                }
                
            }
        }.environmentObject(timer)
    }
}
struct AwakeView: View {
    @EnvironmentObject var timer : SleepTimer
    var body: some View {
        Text("Good Morning, you slept for a total of \(timer.timeSlept) Hours")
    }
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
