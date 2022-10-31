//
//  BackgroundImage.swift
//  Registration
//
//  Created by Abdulloh on 31/10/22.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        VStack {
            Image("mountains")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
        }
    }
}

struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImage()
    }
}
