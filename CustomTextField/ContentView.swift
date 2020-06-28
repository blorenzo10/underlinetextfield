//
//  ContentView.swift
//  CustomTextField
//
//  Created by Bruno Lorenzo on 6/27/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    
    private let emailIconName = "Icon_Email"
    private let passwordIconName = "Icon_Password"
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
        
            VStack {
                
                UnderlineTextFieldView(
                    text: $userEmail,
                    textFieldView: textView,
                    placeholder: "Email Address",
                    imageName: emailIconName)
                    .padding(.top, 100)
                
                UnderlineTextFieldView(
                    text: $userPassword,
                    textFieldView: passwordView,
                    placeholder: "Password",
                    imageName: passwordIconName)
                    .padding(.top, 30)
                
                Spacer()
            }
        }
    }
}

extension ContentView {
    
    private var textView: some View {
        TextField("", text: $userEmail)
            .foregroundColor(.white)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
    }
    
    private var passwordView: some View {
        SecureField("", text: $userPassword)
            .foregroundColor(.white)
    }
}
