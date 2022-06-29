
//  ContentView.swift
//  BetterSleep
//
//  Created by tilak Ghorashainee on 6/28/22.
//

import Foundation
import Foundation
import SwiftUI
struct ContentView: View {
    @StateObject var manager = AudioRecordManager()
    var body: some View {
        TabView {
            AudioRecordInfo()
                .tabItem {
                    Image(systemName: "info")
                    Text("Sleep info")
                }
            RecordView()
                .tabItem{
                    Image(systemName:"info")
                    Text("Record history")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
