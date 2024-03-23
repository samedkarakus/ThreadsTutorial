//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("threads-icon")
                    .resizable()
                    .modifier(ThreadsIconModifier())
                VStack{
                    TextField("Enter your full name: ", text: $fullname)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your username: ", text: $username)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your email: ", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your password: ", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                Button{
                    
                } label: {
                    Text("Sign Up")
                        .modifier(ThreadsButtonFieldModifier())
                }
                .padding(.vertical)
                
                Spacer()
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack (spacing: 3){
                        Text("Already have an account?")
                        Text("Login")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 12)
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
