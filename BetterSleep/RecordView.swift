//
//  AudioRecordView.swift
//  BetterSleep (iOS)
//
//  Created by Tilak Ghorashainee on 6/20/22.
//
import Foundation
import SwiftUI
struct AudioRecordInfo: View {
    @EnvironmentObject var manager: AudioRecordManager
    @State var AVAudioRecorder: String = " "
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                Text("Sleep History")
                    .bold()
                    .font(.largeTitle)
                }
               List {
                    Section(header: Text("RecordSleep History")) {
                        NavigationLink(destination: Text("you are good sleep")) {
                           Text("Slepping Record")                        }
                       }
                   // give the histroy of the record
                   HStack {
                       NavigationLink(destination: Text("you are snowring 10%, couffing 5%")){
                       Text("Sleeping Noise record")
                           .bold()
                           Spacer()
                       }
                       }
                      }
                    }
                }
                Spacer()
            }
        }

struct RecordView: View {
    @SceneStorage("AudioRecordName") var AudioRecordName: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                Text("Noise History")
                    .bold()
                    .font(.largeTitle)
                }
                .padding(.bottom, 30)

                HStack {
                    Text("Sleep History")
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
