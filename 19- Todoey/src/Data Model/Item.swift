//
//  Item.swift
//  Todoey
//
//  Created by Pichborith Kong on 4/25/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

class Item : Codable {
    var title : String
    var done : Bool = false
    
    init(_ title: String) {
        self.title = title
    }
}
