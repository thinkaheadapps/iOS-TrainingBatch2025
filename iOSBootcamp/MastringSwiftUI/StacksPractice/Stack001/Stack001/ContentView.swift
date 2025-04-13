//
//  ContentView.swift
//  Stack001
//
//  Created by Divya Rai on 13/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = String()
    @State private var passwordVal: String = String()
    
    var body: some View {
        VStack
        {
            Text("Login").font(.title)
            Text("Sample Example text").font(.subheadline).padding()
            
            TextField("User Name", text: $userName)
                .padding()
                .background(Color.gray)
                .cornerRadius(4.0)
            
            SecureField("Password", text: $passwordVal)
                .padding()
                .background(Color.gray)
                .cornerRadius(4.0)
            
            HStack {
                Button(action: {debugPrint("Login Pressed")},  label: {
                  Text("Login")
                } )
             
                Spacer()
                
                Button(action: {debugPrint("Forgot password tapped")},  label: {
                    Text("Forgot Password").padding()
                } )
            }
                  
        }.padding()
        
        
    }
}

#Preview {
    ContentView()
}
