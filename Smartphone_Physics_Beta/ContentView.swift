//
//  ContentView.swift
//  Smartphone_Physics_Beta
//
//  Created by Ashvij Hosdurg on 2/9/26.
//

import SwiftUI

func logIn() {
    
}

func signUp() {
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Smartphone Physics")
            Text("Welcome")
            HStack {
                Button(action: logIn) {
                    Text("Login")
                }
                Button(action : signUp) {
                    Text("Signup")
                }
            }
        }
        .padding()
        TabView {
            AllLessonsView()
                .tabItem {
                    Image(systemName: "graduationcap")
                    Text("Lessons")
                }
            Text("Materials")
                .tabItem {
                    Image(systemName: "tray.fill" )
                    Text("Materials")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            CommunityView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Community")
                    
                }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
