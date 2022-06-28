//
//  AudioRecordView.swift
//  BetterSleep (iOS)
//
//  Created by Tilak Ghorashainee on 6/20/22.
//
import Foundation
import SwiftUI
struct AudioRecordInfo: View {
    @State var AVAudioRecorder: String = " "
    var body: some View {
        NavigationView {
            VStack {
               List {
                    Section(header: Text("AudioRecordSleep track")) {
                        NavigationLink(destination: Text("Record For Better Sleep")) {
                           Text("Slepping Record")
                        }
                        }
                      }
                    }
                }
                Spacer()
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
