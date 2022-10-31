//
//  ContentView.swift
//  Registration
//
//  Created by Abdulloh on 30/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundImage()
            SignInView()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func getSize() -> CGSize{
    return UIScreen.main.bounds.size
}
