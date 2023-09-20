//
//  BaseENV.swift
//  Clima
//
//  Created by Pichborith Kong on 9/14/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

class BaseENV {
    let dict: NSDictionary

    enum Keys: String {
        case OWM_API_KEY
    }

    init(resourceName: String) {
        guard let filePath = Bundle.main.path(forResource: resourceName, ofType: "plist"), let plist = NSDictionary(contentsOfFile: filePath) else {
            fatalError("Couldn't find file '\(resourceName)' plist")
        }
        self.dict = plist
    }
}

protocol KEYSProtocol {
    var OWM_API_KEY: String { get }
}

class DevENV: BaseENV, KEYSProtocol {
    init() {
        super.init(resourceName: "Keys-Info")
    }

    var OWM_API_KEY: String {
//        dict.object(forKey: "OWM_API_KEY") as? String ?? ""
        dict.object(forKey: Keys.OWM_API_KEY.rawValue) as? String ?? ""
    }
}

// class DebugENV:BaseENV, KEYSProtocol {
//    init() {
//        super.init(resourceName: "DEBUG-Keys")
//    }
//
//    var OWM_API_KEY: String {
//        dict.object(forKey: "OWM_API_KEY") as? String ?? ""
//    }
// }
//
// class ProdENV:BaseENV, KEYSProtocol {
//    init() {
//        super.init(resourceName: "PROD-Keys")
//    }
//
//    var OWM_API_KEY: String {
//        dict.object(forKey: "OWM_API_KEY") as? String ?? ""
//    }
// }
