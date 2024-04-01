//
//  DetailView.swift
//  H4X0R News
//
//  Created by Pichborith Kong on 3/31/24.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "google.com")
}


