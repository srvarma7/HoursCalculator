//
//  CustomButton.swift
//  Hours Calculator
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    override func prepareForInterfaceBuilder() {
        startEditing()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        startEditing()
    }
    
    func startEditing() {
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = .orange
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
        layer.borderWidth = 3
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
    }
}
