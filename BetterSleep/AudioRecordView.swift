//
//  AudioRecordView.swift
//  BetterSleep (iOS)
//
//  Created by csuftitan on 6/20/22.
//

import Foundation
import SwiftUI
struct AudioRecordInfo: View {
    @State var AVAudioRecorder: String = " "
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("AudioRecord")) {
                        NavigationLink(destination: Text("Record For Better sleep")) {
                            Text("Better sleep")
                        }
                        NavigationLink(destination: Text("Address of the Better sleep")) {
                            Text("Bettersleep")
                        }
                      }
                    }
                }
                Spacer()
            }
        }
   }

struct AddCrossWalk: View {
    @SceneStorage("AudioRecordName") var crosswalkName: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                Text("AudioRecord Submission")
                    .bold()
                    .font(.largeTitle)
                }
                .padding(.bottom, 30)

                HStack {
                    Text("AudioRecord Name")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                    Text("Submit")
                      // .modifier(ButtonDesign())
                }
                Spacer()
            }
            .padding()
        }
    }

