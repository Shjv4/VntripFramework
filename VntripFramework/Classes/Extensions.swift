//
//  Extensions.swift
//  VntripFramework
//
//  Created by Hoang NA on 2/23/17.
//  Copyright © 2017 VNTrip OTA. All rights reserved.
//

import UIKit

extension Array where Element: Equatable {
    /** Remove object by its value
        @param object object to remove
     */
    mutating func removeObject(object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }
}

extension UITextField {
    
    /** Focus on textfield (red border)
    */
    func highlightTextField() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.red.cgColor
    }
    
    /** Unfocus on textfield (clear border)
     */
    func unhighlightTextField() {
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.clear.cgColor
    }
}

extension String {
    /** Check as if string is valid email address or not 
        @return Bool value
    */
    func isValidEmail() -> Bool {
        let emailRegEx = "^[a-zA-Z0-9\\.\\-\\_]+\\@[a-zA-Z0-9]+[\\.a-zA-Z]+$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: self)
        return result
    }
    
    /** Check as if string is valid number or not
     @return Bool value
     */
    func isValidNumber() -> Bool {
        let numberRegEx = "^[0-9]+$"
        let numberTest = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
        let result = numberTest.evaluate(with: self)
        return result
    }
}

extension UIColor {
    /** Init color with hex value 
        @param hexString: hex string of color: #ff00ff, #fff, ff00ff, fff
        @alpha color alpha
    */
    convenience init(hexString: String, alpha: Float) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let r, g, b: UInt32
        switch hex.characters.count {
        case 3: // RGB (12-bit)
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(255 * alpha) / 255)
    }
}


