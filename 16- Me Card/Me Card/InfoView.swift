//
//  InfoView.swift
//  Me Card
//
//  Created by Pichborith Kong on 3/28/24.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
        //                    .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).bold()
            })
            .padding(.all)
    }
}
//
//struct InfoView_Preview : PreviewProvider {
//    static var previews: some View {
//        InfoView(text: "Hello", imageName: "phone.fill")
//            .previewLayout(.sizeThatFits)
//    }
//}

//#Preview {
//    ZStack {
//        Color(.green)
//        InfoView(text: "Hello", imageName: "phone.fill")
//    }
//}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "Hello", imageName: "phone.fill")
}

