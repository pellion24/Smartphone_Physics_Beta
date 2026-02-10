//
//  SignUpView.swift
//  Smartphone_Physics_Beta
//
//  Created by Ashvij Hosdurg on 2/10/26.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        TextField (
            "User name (email address)",
            text: $username
        )
        TextField (
            "Password",
            text: $password
        )
        
    }
}

#Preview {
    SignUpView()
}
