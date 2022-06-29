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
                    Text("Coffing")
                        .bold()
                    Spacer()
                }
                HStack {
                    Text("Walking sound")
                        .bold()
                    Spacer()
                }
                HStack {
                    Text("Snoring")
                        .bold()
                    Spacer()
                }
                Button(action:{
                            }) {
                                // Create a record button
                                    ZStack{
                                       Circle()
                                        .fill(Color.red)
                                        .frame(width:70, height:70)
                                  
                                        Circle()
                                            .stroke(Color.white, lineWidth: 5)
                                            .frame(width:85, height:85)
                                    }
                                    .padding(.bottom, 5)
                                 Text("Record ")
                                .modifier(ButtonDesign())
                                }
                            }
                            .padding(.vertical,10)
                        }
                        .navigationBarTitle("Audio sleep Record")
                    
                }
        
            }
          
        
