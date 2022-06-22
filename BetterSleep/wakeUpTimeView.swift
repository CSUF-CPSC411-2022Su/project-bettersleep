//
//  wakeUpTimeView.swift
//  BetterSleep
//
//  Created by Souri, Michael on 6/20/22.
//

import SwiftUI

struct wakeUpTimeView: View {
    @StateObject var timeCalc = wakeUpTime(hour: 10, minute: 30, amPM: "AM")
    var body: some View {
        NavigationView {
            VStack {
                textView()
                buttonView()
                NavigationLink(destination: viewTime(), label: {
                    calcButtonView()
                })
            }
        }.environmentObject(timeCalc)
    }
}

struct viewTime: View {
    @EnvironmentObject var optimalTime: wakeUpTime
    var body: some View {
        Text("\(optimalTime.hour):\(optimalTime.minute) \(optimalTime.amPM)")
    }
}

struct calcButtonView: View {
    var body: some View {
        Text("Calculate")
            .bold()
            .frame(width: 150, height: 50)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct buttonView: View {
    var body: some View {
        HStack {
            Text("Hour")
                .frame(width: 100, height: 50)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                .offset(y: -75)
            Text("Minute")
                .frame(width: 100, height: 50)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                .offset(y: -75)
            Text("AM/PM")
                .frame(width: 100, height: 50)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                .offset(y: -75)
        }
    }
}

struct textView: View {
    var body: some View {
        Text("I plan to fall asleep at...").font(.largeTitle)
            .padding()
            .offset(y: -150)
    }
}

struct wakeUpTimeView_Previews: PreviewProvider {
    static var previews: some View {
        wakeUpTimeView()
    }
}
