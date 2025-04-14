//
//  ThirdView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Divya Rai on 14/04/25.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user : User 
    var body: some View {
        Text("Logged in User name=\(user.name)")
    }
}

#Preview {
    ThirdView()
}
