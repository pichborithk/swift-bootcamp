//
//  ContentView.swift
//  Me Card
//
//  Created by Pichborith Kong on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Pichborith Kong")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("Software Engineer")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
