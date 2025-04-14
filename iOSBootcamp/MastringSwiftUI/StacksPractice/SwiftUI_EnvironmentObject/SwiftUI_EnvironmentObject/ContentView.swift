//
//  ContentView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Divya Rai on 14/04/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user : User = User()
    var body: some View {
        
        NavigationView {
            VStack {
                Text("LoggedIn username: \(user.name)")
                TextField("UserName", text: $user.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("navigate to second View", destination: SecondView())
               
            }
            .padding()
            .navigationBarTitle("Environment Object")
        }.environmentObject(user)
       
    }
}

#Preview {
    ContentView()
}
