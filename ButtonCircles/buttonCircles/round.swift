//
//  VC.swift
//  buttonCircles
//
//  Created by Jasbeer Singh on 27/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
@IBDesignable
class VC: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }

    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable var borderwidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderwidth
    }
}



}
