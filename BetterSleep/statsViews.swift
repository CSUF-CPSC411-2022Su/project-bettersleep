//
//  statsViews.swift
//  BetterSleep
//
//  Created by Nazeri, Daniel on 6/20/22.
//

import SwiftUI

// Display stats from stats.swift
struct statsList: View {
    var body: some View {
        VStack {
            Text("The last 7 days, you've slept for...")
            ForEach(Stats) {
                Text("\(Stats) hours")
            }
        }
    }
}
