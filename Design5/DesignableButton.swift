//
//  DesignableButton.swift
//  Design5
//
//  Created by Sebastian Strus on 2017-03-27.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {

    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
}
