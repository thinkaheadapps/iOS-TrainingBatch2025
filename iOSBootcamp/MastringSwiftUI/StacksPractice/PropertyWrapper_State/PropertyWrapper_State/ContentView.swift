//
//  ContentView.swift
//  PropertyWrapper_State
//
//  Created by Divya Rai on 13/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playStatus : String = "Not Playing"
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .cornerRadius(4.0).padding()
            Text(playStatus).padding()
           
            HStack {
                Button(action: {
                   
                    debugPrint("Backword button pressed")
                
                }) {
                    Image(systemName: "backward")
                        .resizable()
                        .frame(width: 60, height:  60, alignment: .center)
                }
              
                Spacer()
                
                Button(action: {
                    self.isPlaying.toggle()
                    self.playStatus = self.isPlaying ? "Playing" : "Not playing"
                    debugPrint("Play Button Pressed")
                    
                }) {
                    Image(systemName: self.isPlaying ? "pause": "play")
                        .resizable()
                        .frame(width: 60, height:  60, alignment: .center)
                    
                }
                Spacer()
                
                Button(action: {
                    
                debugPrint("Fastforward button pressed")
                }) {
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 60, height:  60, alignment: .center)
                    
                }
                
            }
           
        }
    }
}

#Preview {
    ContentView()
}
