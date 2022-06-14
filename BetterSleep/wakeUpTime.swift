//
//  wakeUpTime.swift
//  BetterSleep
//
//  Created by Souri, Michael on 6/13/22.
//

import Foundation

struct wakeUpTime {
    var hour: Int
    var minute: Int
    var amPM: String
    
    init(hour: Int, minute: Int, amPM: String) {
        self.hour = hour
        self.minute = minute
        self.amPM = amPM
    }
    
    func printTime() {
        print("\(hour) : \(minute) \(amPM)")
    }
}
