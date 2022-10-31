//
//  SignInView.swift
//  Registration
//
//  Created by Abdulloh on 31/10/22.
//

import SwiftUI

struct SignInView: View {
    @FocusState var isFocused: Bool
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var fullScreen = false
    
    var body: some View {
        VStack {
            Spacer()
            
            NavigationView {
                VStack(spacing: 50) {
                    Spacer()
                    
                    FloatingTextField(fullScreen: $fullScreen, text: $emailText, placeholder: "Email")
                        .focused($isFocused)
                    FloatingSecureField(fullScreen: $fullScreen, text: $passwordText, placeholder: "Password")
                        .focused($isFocused)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 20) {
                        StrokeButton(
                            text: "Sign In",
                            action: {
                                fullScreen = false
                                isFocused = false
                            }
                        )
                        
                        Button(
                            action: {},
                            label: {
                                Text("Forgot Password?")
                                    .foregroundColor(.gray)
                            }
                        )
                        
                        GradientButton(
                            text: "Create Account",
                            action: {}
                        )
                    }
                    
                    
                }
                .padding(50)
                .navigationTitle("Welcome")
            }
            .cornerRadius(30)
            .frame(height: fullScreen ? getSize().height : getSize().height*0.8)
            .navigationBarBackButtonHidden(true)
        }
        .animation(.linear(duration: 0.2), value: fullScreen)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .background(.red)
    }
}
