//
//  VNTTextField.swift
//  VntripFramework
//
//  Created by Hoang NA on 2/23/17.
//  Copyright © 2017 VNTrip OTA. All rights reserved.
//

import UIKit

@IBDesignable
class VNTTextField: UITextField {

    @IBInspectable var leftImage:UIImage? = nil {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
            imageView.image = leftImage
            self.addSubview(imageView)
        }
    }
    
    @IBInspectable var insetX: CGFloat = 0
    
    @IBInspectable var insetY: CGFloat = 0
    
    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }

}
