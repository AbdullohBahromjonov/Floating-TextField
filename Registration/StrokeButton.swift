//
//  StrokeButton.swift
//  Registration
//
//  Created by Abdulloh on 31/10/22.
//

import SwiftUI

struct StrokeButton: View {
    let text: String
    var action: () -> Void = {}
    
    var body: some View {
        Button(
            action: action,
            label: {
                ZStack {
                    Capsule()
                        .stroke(Color.pink, lineWidth: 2)
                        .frame(height: 50)
                    Text(text)
                        .foregroundColor(.pink)
                        .fontWeight(.medium)
                }
            }
        )
    }
}

struct StrokeButton_Previews: PreviewProvider {
    static var previews: some View {
        StrokeButton(text: "Sign In")
    }
}
