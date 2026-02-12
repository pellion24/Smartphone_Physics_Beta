//
//  LogInView.swift
//  Smartphone_Physics_Beta
//
//  Created by Ashvij Hosdurg on 2/10/26.
//

import SwiftUI

struct LogInView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Image(systemName: "person.crop.circle.fill")
    
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
    LogInView()
}
