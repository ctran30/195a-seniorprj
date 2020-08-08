//
//  ContentView.swift
//  enginears
//
//  Created by Connie Tran on 3/16/20.
//  Copyright © 2020 Connie Tran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            engineeringBanner()
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .center) {
                Text("Spartan EngiNears")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.0, green: 0.33, blue: 0.64, opacity: 1.0))
                VStack() {
                    Text("Establishing connections for")
                        .fontWeight(.light)
                    Text("SJSU Engineers near and far.")
                        .fontWeight(.light)
                }
                    .font(.body)
                
                
                VStack () {
                    TextField("  Username", text: $username)
                        .border(Color.gray)
                        .padding(.horizontal, 50.0)
                    SecureField("  Password", text: $password)
                        .border(Color.gray)
                        .padding(.horizontal, 50.0)
                }
                .padding(.all, 28.0)
                
                
                NavigationLink(destination: logged_in()) {
                    Text ("Log In")
                        .font(.headline)
                        .fontWeight(.regular)
                        .padding()
                        .background(Color(red: 0.0, green: 0.33, blue: 0.64, opacity: 1.0))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                }
                
                .padding()
                
                NavigationLink(destination: register()) {
                    Text ("Sign Up for Account")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                }
                
                
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
