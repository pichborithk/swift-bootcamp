//
//  PostData.swift
//  H4X0R News
//
//  Created by Pichborith Kong on 3/31/24.
//

import Foundation

struct Results : Codable {
    let hits: [Post]
}


struct Post : Codable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID: String
    let points : Int
    let title: String
    let url: String?
}
