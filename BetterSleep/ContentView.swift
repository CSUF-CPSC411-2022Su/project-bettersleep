//
//  Content View.swift
//  BetterSleep
//
//  Created by Tilak Ghorashainee on 6/26/22.
//
import Foundation
import SwiftUI
import AVFoundation
struct ContentView: View{
    @State var AVAudioRecorder: String = " "
    var body: some View{
       Home()
        //darkmode color for the home scree
            .preferredColorScheme(.dark)
        
        TabView{
               AudioRecordInfo()
                .tabItem {
                    Image(systemName: "info")
                        .tag(1)
                    Rectangle()
                    Text("Better Sleep")
                }
        }
    }

    
    struct Home: View{
    @State var record = false
        @State var session : AVAudioSession!
        @State var recorder : AVAudioRecorder!
       var recordingSession: AVAudioSession!
        var audioRecorder: AVAudioRecorder!
        var audioPlayer: AVAudioPlayer!
        @State var alert = false
        @State var audios : [URL] = []
    var body: some View{
    NavigationView{
        VStack{
            Button(action:{
                self.record.toggle()
                //recording Audio
                
                do{
                    if self.record{
                        self.recorder.stop()
                        self.record.toggle()
                        //updating data from every record
                        self.getAudios()
                        return
                    }
                    let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                    start 
                    let fileName = url.appendingPathComponent("recording\(self.audios.count + 1).m4a")
                let settings = [
                    AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                    AVSampleRateKey: 12000,
                    AVNumberOfChannelsKey: 1,
                    AVEncoderAudioQualityKey: AVAudioQuality.medium.rawValue
                ]
                self.record = try AVAudioRecorder(url:fileName,settings: settings )
                    self.recorder.record()
                    self.record.toggle()
                    
                }
               // {
                    ZStack{
                       Circle()
                        .fill(Color.red)
                        .frame(width:70, height:70)
                  if self.record{
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                            .frame(width:85, height:85)
                    }
               // }
            }
            .padding(.vertical,10)
        }
                   
    )}
        .navigationBarTitle("Audio Record")
       }
    
        .alert(isPresented: self.$alert, content:{
                Alert(title: Text("Error"),message: Text("Enable Access"))
            })
    }
       .onAppear{
                        do{
                            //Inializing
                            self.session = AvAudiossion.sharedInsance()
                            try self.session.setCategory(.playAndRecord)
                            //requesting permission
                            if !status{
                                //error msg
                                self.alart.toggle()
                                
                        }
                            else{
                                //if permission granted means featching all data
                                self.getAudios()
                            }
                    }
    }
        func getAudios(){
            do{
                let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                let result = try FileManager.default.contentsOfDirectory(at: url,
                        includingPropertiesForKeys: nil, options: .producesRelativePathURLs)
                // remove all data
                for i in result{
                    self.audios.append(i)
                    
                }
            }
            catch{
                print(error.localizedDescription)
                
              }
          }
    }
}
