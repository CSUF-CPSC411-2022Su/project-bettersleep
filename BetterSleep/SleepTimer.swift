//
//  SleepTimer.swift
//  BetterSleep
//
//  Created by csuftitan on 6/8/22.
//

import Foundation

class SleepTimer
{
    var timeSlept : Double
    var timeGoal : Double
    init(timeGoal : Double)
    {
        self.timeGoal = timeGoal
        self.timeSlept = 0.0
    }
    
    func stopSleeping(at timeSlept : Double){
        self.timeSlept = timeSlept
    }
}
