//
//  EnvironmentHelper.swift
//  ByteCoin
//
//  Created by Pichborith Kong on 9/17/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

class BaseENV {
    let dict: NSDictionary

    init(resourceName: String) {
        guard let filePath = Bundle.main.path(forResource: resourceName, ofType: "plist"), let plist = NSDictionary(contentsOfFile: filePath) else {
            fatalError("Couldn't find file '\(resourceName)' plist")
        }
        self.dict = plist
    }
}

protocol KEYSProtocol {
    var COIN_API_KEY: String { get }
}

class DevENV: BaseENV, KEYSProtocol {
    init() {
        super.init(resourceName: "Keys-Info")
    }

    var COIN_API_KEY: String {
        dict.object(forKey: "COIN_API_KEY") as? String ?? ""
    }
}
