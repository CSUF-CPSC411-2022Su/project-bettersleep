//
//  wakeUpTimeView.swift
//  BetterSleep
//
//  Created by Souri, Michael on 6/20/22.
//

import SwiftUI

struct wakeUpTimeView: View {
    @StateObject var timeCalc = wakeUpTime(hour: 10, minute: 30)
    @State var currentTime = Date()
    var closedRange = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
    
    func formatTime() -> String {
        let components = Calendar.current.dateComponents([.hour, .minute], from: currentTime)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
        return "\(hour):\(minute)"
    }
    
    func calcTime() -> String {
        let components = Calendar.current.dateComponents([.hour, .minute], from: currentTime)
        let hour = (components.hour ?? 0) + 8
        let minute = components.minute ?? 0
        
        return "\(hour):\(minute)"
    }

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header:Text("Pick a time")) {
                        DatePicker(" ➤➤➤➤➤   ", selection: $currentTime)
                        Text("\(formatTime())")
                    }
                    NavigationLink(destination: viewTime(), label: {
                        calcButtonView()
                        
                    })
                }
                .navigationTitle("I plan to wake up at...")
            }
        } .environmentObject(timeCalc)
    }
}

struct viewTime: View {
    @EnvironmentObject var optimalTime: wakeUpTime
    
    
    
    var body: some View {
        Text("\(optimalTime.hour):\(optimalTime.minute)")
    }
}

struct calcButtonView: View {
    var body: some View {
        Text("Calculate")
            .bold()
            .frame(width: 275, height: 50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct wakeUpTimeView_Previews: PreviewProvider {
    static var previews: some View {
        wakeUpTimeView()
    }
}
