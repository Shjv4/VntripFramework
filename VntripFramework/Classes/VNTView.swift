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
    @IBInspectable var radius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = radius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet  {
            self.layer.borderColor = borderColor?.cgColor
        }
    }

}
