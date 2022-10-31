//
//  SwiftUIView.swift
//  Registration
//
//  Created by Abdulloh on 31/10/22.
//

import SwiftUI

struct FloatingSecureField: View {
    @Binding var fullScreen: Bool
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Text(placeholder)
                    .foregroundColor(.gray)
                    .offset(y: self.text.isEmpty ? 0 : -25)
                    .animation(.linear(duration: 0.2), value: text.isEmpty)
                
                SecureField("", text: $text)
                    .onTapGesture {
                        fullScreen = true
                    }
            }
            
            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 1)
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingSecureField(fullScreen: .constant(false), text: .constant(""), placeholder: "Password")
    }
}
