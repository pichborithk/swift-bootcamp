//
//  EnvironmentHelper.swift
//  ByteCoin
//
//  Created by Pichborith Kong on 3/27/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct DevENV {
    static var dict: NSDictionary {
        guard let filePath = Bundle.main.path(forResource: "Keys-Info", ofType: "plist"),
                let plist = NSDictionary(contentsOfFile: filePath) else {
            fatalError("Couldn't find file 'Keys-Info' plist")
        }
        
        return plist
    }
    
    static var COIN_API_KEY: String {
        dict.object(forKey: "COIN_API_KEY") as? String ?? ""
    }
}

// MARK: - Method below need to initialize DevENV

//class BaseENV {
//    let dict: NSDictionary

//    init(resourceName: String) {
//        guard let filePath = Bundle.main.path(forResource: resourceName, ofType: "plist"), let plist = NSDictionary(contentsOfFile: filePath) else {
//            fatalError("Couldn't find file '\(resourceName)' plist")
//        }
//        self.dict = plist
//    }
//}

//protocol KEYSProtocol {
//    var COIN_API_KEY: String { get }
//}

//class DevENV: BaseENV, KEYSProtocol {
//    init() {
//        super.init(resourceName: "Keys-Info")
//    }

//    var COIN_API_KEY: String {
//        dict.object(forKey: "COIN_API_KEY") as? String ?? ""
//    }
//}

// MARK: -

//class BaseENV {
//    let dict: NSDictionary

//    init(resourceName: String) {
//        guard let filePath = Bundle.main.path(forResource: resourceName, ofType: "plist"), let plist = NSDictionary(contentsOfFile: filePath) else {
//            fatalError("Couldn't find file '\(resourceName)' plist")
//        }
//        self.dict = plist
//    }
//
//}

//enum Keys: String {
//    case COIN_API_KEY
//}

//class DevENV: BaseENV {
//    init() {
//        super.init(resourceName: "Keys-Info")
//    }

//    var COIN_API_KEY: String {
//        dict.object(forKey: Keys.COIN_API_KEY.rawValue) as? String ?? ""
//    }
//}
