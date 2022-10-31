//
//  GradientButton.swift
//  Registration
//
//  Created by Abdulloh on 31/10/22.
//

import SwiftUI

struct GradientButton: View {
    let text: String
    var action: () -> Void = {}
    
    var body: some View {
        Button(
            action: action,
            label: {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.yellow, .pink, .pink, .pink]), startPoint: .leading, endPoint: .trailing)
                        .frame(height: 52)
                        .clipShape(
                            Capsule()
                        )
                    Text(text)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
            }
        )
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(text: "Sign In")
    }
}
