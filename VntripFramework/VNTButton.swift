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

    @IBInspectable var radius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = radius
        }
    }
    
    
}
