//
//  statsViews.swift
//  BetterSleep
//
//  Created by Nazeri, Daniel on 6/20/22.
//

import SwiftUI

// Display stats from stats.swift
struct statsList: View {
    @ObservedObject var model = Model()
    var body: some View {
        VStack {
            print(Stats)
        }
    }
}
