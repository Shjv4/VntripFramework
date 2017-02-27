//
//  VNTButton.swift
//  VntripFramework
//
//  Created by Hoang NA on 2/23/17.
//  Copyright © 2017 VNTrip OTA. All rights reserved.
//

import UIKit

@IBDesignable
class VNTButton: UIButton {

    /// The corner radius of VNTButton, if > 0 masksToBounds will be set to true
    @IBInspectable var radius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = radius > 0
            self.setNeedsDisplay()
        }
    }
    
    // The border width of VNTButton
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
            self.setNeedsDisplay()
        }
    }
    
    // The border color of VNTButton
    @IBInspectable var borderColor: UIColor? {
        didSet  {
            self.layer.borderColor = borderColor?.cgColor
            self.setNeedsDisplay()
        }
    }

}
