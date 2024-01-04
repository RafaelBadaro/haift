//
//  RegisterView.swift
//  haift
//
//  Created by Rafael Badaró on 03/01/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            
            VStack (spacing: 24)    {
                InputView(text: $email,
                          title: "Email Address",
                          placeHolder: "name@example.com")
                .autocapitalization(.none)
                
                InputView(text: $fullName,
                          title: "Full name",
                          placeHolder: "Enter your name")
                
                InputView(text: $password,
                          title: "Password",
                          placeHolder: "Enter your password",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeHolder: "Confirm your Password")
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Button {
                print("Sign user in...")
            } label: {
                HStack {
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)

            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)

            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3)  {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }.font(.system(size: 14))
            }

            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
