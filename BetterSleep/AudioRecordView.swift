//
//  AudioRecordView.swift
//  AudioRecord
//Created by tilak Ghorashainee 6/13/2022
//

import Foundation

import SwiftUI
import AVFoundation
struct AudioRecordView: View{
    @State var AVAudioRecorder: String = " "
    var body: some View{
       Home()
        //darkmode color for the home scree
            .preferredColorScheme(.dark)
       TabView{
              AudioRecordInfo()
               .tabItem {
                   Image(systemName: "info")
                   Text("sleep info")
                }
          

        }
    }
    struct Home: View{
    @State var record = false
    var body: some View{
    NavigationView{
        VStack{
            Button(action:{
                self.record.toggle()
            }) {
                // Create a record button
                    ZStack{
                       Circle()
                        .fill(Color.red)
                        .frame(width:70, height:70)
                  if self.record{
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                            .frame(width:85, height:85)
                    }
                }
            }
            .padding(.vertical,10)
        }
        .navigationBarTitle("Audio sleep Record")
       }
    }
  }
   struct RecordView_Previews: PreviewProvider{
      static var previews: some View {
         AudioRecordView()
           
        }
      }
   }
