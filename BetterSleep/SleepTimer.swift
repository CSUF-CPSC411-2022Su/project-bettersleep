//
//  SleepTimer.swift
//  BetterSleep
//
//  Created by csuftitan on 6/8/22.
//

import Foundation

class SleepTimer: ObservableObject
{
    
    @Published var timeSlept : Double
    @Published var timeGoal : Double
    init(timeGoal : Double)
    {
        self.timeGoal = timeGoal
        self.timeSlept = 5.5
    }
    
    func stopSleeping(at timeSlept : Double){
        self.timeSlept = timeSlept
    }
}
