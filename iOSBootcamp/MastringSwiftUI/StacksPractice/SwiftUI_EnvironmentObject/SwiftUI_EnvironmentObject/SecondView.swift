//
//  SecondView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Divya Rai on 14/04/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationLink("Navigate", destination: ThirdView())
    }
}

#Preview {
    SecondView()
}
