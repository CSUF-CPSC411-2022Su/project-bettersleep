//
//  ContentView.swift
//  AudioRecord
//Created by tilak Ghorashainee 6/13/2022

import SwiftUI
struct ContentView: View{
    var body: some View{
        Home()
        // darkmode color for the home scree
            .preferredColorScheme(.dark)
    }
}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
        
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
                    ZStack{
                       Circle()
                        .fill(Color.red)
                        .frame(width:50, height:50)
                  if self.record{
                        Circle()
                            .stroke(Color.black, lineWidth: 5)
                            .frame(width:70, height:70)
                            
                    }
                }
            }
                .padding(.vertical, 25)
        }
         .navigationBarTitle("Sleeping Audio Record")
      }
   }
}
