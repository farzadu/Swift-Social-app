//
//  ViewShadow.swift
//  socialApp
//
//  Created by Farzad Taslimi on 9/11/16.
//  Copyright © 2016 Farzad Taslimi. All rights reserved.
//

import UIKit

class ViewShadow: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.6
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }

}
