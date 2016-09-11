//
//  TextFieldOptimize.swift
//  socialApp
//
//  Created by Farzad Taslimi on 9/11/16.
//  Copyright © 2016 Farzad Taslimi. All rights reserved.
//

import UIKit

class TextFieldOptimize: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 3.0
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
        
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    
}
