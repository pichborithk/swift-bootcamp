//
//  UIColor.swift
//  BMI Calculator
//
//  Created by Pichborith Kong on 9/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

extension UIColor {
    public convenience init?(hex: String) {
//        let r, g, b, a: CGFloat
        let r, g, b: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
//                    a = CGFloat(hexNumber & 0x000000ff) / 255

//                    self.init(red: r, green: g, blue: b, alpha: a)
                    self.init(red: r, green: g, blue: b, alpha: 1)
                    return
                }
            }
        }

        return nil
    }
}
