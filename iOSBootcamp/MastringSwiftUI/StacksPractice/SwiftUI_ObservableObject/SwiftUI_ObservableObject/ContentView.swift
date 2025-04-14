//
//  ContentView.swift
//  SwiftUI_ObservableObject
//
//  Created by Divya Rai on 14/04/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var user : User = User()
    
    var body: some View {
        VStack {
            Text("User name is \(user.name)")
            
            TextField("FirstName", text: $user.name)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
