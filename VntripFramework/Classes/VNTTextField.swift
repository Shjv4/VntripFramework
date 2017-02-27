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

    @IBInspectable var leftImageBackgroundColor:UIColor?
    
    @IBInspectable var leftImage:UIImage? = nil {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
            imageView.contentMode = .center
            imageView.image = leftImage?.withRenderingMode(.alwaysTemplate)
            imageView.tintColor = leftImageBackgroundColor != nil ? leftImageBackgroundColor : UIColor.gray
            self.addSubview(imageView)
        }
    }
    
    @IBInspectable var rightImageBackgroundColor:UIColor?
    
    @IBInspectable var rightImage:UIImage? = nil {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: -2, y: 0, width: 16, height: 10))
            imageView.image = rightImage?.withRenderingMode(.alwaysTemplate)
            imageView.contentMode = .left
            self.rightView = imageView
            self.rightViewMode = .always
        }
    }
    
    @IBInspectable var downIconOnRightView: Bool = false {
        didSet {
            if downIconOnRightView == true {
                let bundle = Bundle(for: self.classForCoder)
                let downIcon = UIImage(named: "DownArrowIcon", in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
                let imageView = UIImageView(frame: CGRect(x: -2, y: 0, width: 16, height: 10))
                imageView.image = downIcon
                imageView.tintColor = rightImageBackgroundColor != nil ? rightImageBackgroundColor : UIColor.gray
                imageView.contentMode = .left
                self.rightView = imageView
                self.rightViewMode = .always
            }
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
