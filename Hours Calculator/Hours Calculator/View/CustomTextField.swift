//
//  CustomTextField.swift
//  Hours Calculator
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        startEditing()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        startEditing()
    }
    
    func startEditing() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3)
        layer.borderWidth = 3
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2)
        layer.cornerRadius = 10
        textAlignment = .center
        textColor = .white
        keyboardType = .numberPad
        keyboardAppearance = .dark
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            attributedPlaceholder = place
        }
    }

}
