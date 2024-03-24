//
//  LoginView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 19.03.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("threads-icon")
                    .resizable()
                    .modifier(ThreadsIconModifier())
                VStack{
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forget password")
                } label: {
                    Text("Forget password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button{
                    Task { try await viewModel.login() }
                } label: {
                    Text("Login")
                        .modifier(ThreadsButtonFieldModifier())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true) //Üst köşedeki geri butonunu sakladık.
                } label: {
                    HStack (spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
