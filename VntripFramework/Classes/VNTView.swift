//
//  VNTView.swift
//  VntripFramework
//
//  Created by Hoang NA on 2/23/17.
//  Copyright © 2017 VNTrip OTA. All rights reserved.
//

import UIKit

@IBDesignable
class VNTView: UIView {
    /// The corner radius of view, if > 0 masksToBounds will be set to true
    @IBInspectable var radius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = radius > 0
        }
    }
    
    // The border width of view
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    // The border color of view 
    @IBInspectable var borderColor: UIColor? {
        didSet  {
            self.layer.borderColor = borderColor?.cgColor
        }
    }

}
