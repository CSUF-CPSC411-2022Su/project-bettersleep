//
//  AudioRecord.swift
//  BetterSleep
//
//  Created by Tilak Ghorashaineeon 6/27/22.
//
import Foundation
class AudioRecordManager: ObservableObject {
  @Published var audiorecords: [AudioRecord] = []
    
  init() {
     // Add initial audio record  for testing
      audiorecords.append(AudioRecord(name: "Track sleep",description: "Audio Record"))
  }
}

struct AudioRecord: Identifiable {
   
   var id = UUID()
  var name: String
 var description: String
}


