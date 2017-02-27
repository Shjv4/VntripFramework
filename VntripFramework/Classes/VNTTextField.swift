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

    /// The color of left view, if not set the default color of left view will be set to Blue
    @IBInspectable var leftImageBackgroundColor:UIColor? {
        didSet {
            if let imageView = self.viewWithTag(100) {
                imageView.tintColor = leftImageBackgroundColor
            }
        }
    }
    
    /// The frame of left image view
    @IBInspectable var leftImageRect:CGRect? = nil {
        didSet {
            if let imageView = self.viewWithTag(100) {
                imageView.frame = leftImageRect!
                imageView.setNeedsDisplay()
            }
        }
    }
    
    /// The image of left view
    @IBInspectable var leftImage:UIImage? = nil {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 16, height: 16))
            imageView.contentMode = .center
            imageView.image = leftImage?.withRenderingMode(.alwaysTemplate)
            imageView.tag = 100
            self.addSubview(imageView)
        }
    }
    
    /// The color of right view, if not set the default color of right view will be set to Blue
    @IBInspectable var rightImageBackgroundColor:UIColor? {
        didSet {
            self.rightView?.tintColor = rightImageBackgroundColor
        }
    }
    
    /// The image of right view
    @IBInspectable var rightImage:UIImage? = nil {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 22, height: 14))
            imageView.image = rightImage?.withRenderingMode(.alwaysTemplate)
            imageView.contentMode = .center
            self.rightView = imageView
            self.rightViewMode = .always
        }
    }
    
    /// Set down icon for right view
    @IBInspectable var downIconOnRightView: Bool = false {
        didSet {
            if downIconOnRightView == true {
                let bundle = Bundle(for: self.classForCoder)
                let downIcon = UIImage(named: "DownArrowIcon", in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 22, height: 14))
                imageView.image = downIcon
                imageView.contentMode = .left
                self.rightView = imageView
                self.rightViewMode = .always
            }
        }
    }
    
    /// Inset for left indent
    @IBInspectable var insetX: CGFloat = 0
    
    /// Inset for top indent
    @IBInspectable var insetY: CGFloat = 0
    
    /// The corner radius of VNTTextField
    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
    
    /** Indent for text
 
    */
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    /** Indent for editing state text
     
     */
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    /** Indent for placeholder text
     
     */
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }

}
