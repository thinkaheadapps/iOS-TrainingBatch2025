//
//  User.swift
//  SwiftUI_ObservableObject
//
//  Created by Divya Rai on 14/04/25.
//

import Foundation

class User : ObservableObject{
    @Published var name: String = String()
    @Published var lastName: String = String()
}
