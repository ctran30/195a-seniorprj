//
//  register.swift
//  enginears
//
//  Created by Connie Tran on 3/16/20.
//  Copyright © 2020 Connie Tran. All rights reserved.
//

import SwiftUI

struct register: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    var body: some View {
        VStack(alignment: .center) {
            Text("Register")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .background(Color(red: 0.0, green: 0.33, blue: 0.64, opacity: 1.0))
                .foregroundColor(.white)
                .cornerRadius(40)
                .foregroundColor(.white)
                .shadow(radius: 5)
                
            HStack () {
                Text("Username: ")
                    .padding(.leading, 33.0)
                TextField("  Username", text: $username)
                    .border(Color.gray)
                    .padding(.trailing, 50.0)
            }
            HStack () {
                Text("Password: ")
                    .padding(.leading, 33.0)
                SecureField("  Password", text: $password)
                    .border(Color.gray)
                    .padding(.trailing, 50.0)
                
            }
            HStack () {
                Text("Re-type Password: ")
                    .padding(.leading, 33.0)
                SecureField("", text: $password)
                    .border(Color.gray)
                    .padding(.trailing, 50.0)
            }
            HStack () {
                Text("Email: ")
                    .padding(.leading, 33.0)
                TextField("  Email", text: $email)
                    .border(Color.gray)
                    .padding(.trailing, 50.0)
            }
            
            VStack() {
                NavigationLink(destination: completeProfile()) {
                    Text ("Complete your profile!")
                        .font(.subheadline)
                        .fontWeight(.regular)
                    .foregroundColor(Color.blue)
                }
                .padding()
                
                NavigationLink(destination: logged_in()) {
                    Text ("Skip, create account.")
                    .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                        .padding(.bottom, 0.0)
                }
                
                VStack() {
                    Text("Be sure to complete your profile")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("as it is how we can match you with others!")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
        }
    }
}


struct register_Previews: PreviewProvider {
    static var previews: some View {
        register()
    }
}
