//
//  HomeVC.swift
//  Hours Calculator
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var values: Values!

    @IBOutlet weak var wageTF: CustomTextField!
    @IBOutlet weak var itemCostTF: CustomTextField!
    
    @IBOutlet weak var resultsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        values = Values()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.backgroundColor = .orange
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)

        itemCostTF.inputAccessoryView = calcBtn
    }

    @objc func calculate() {
        if let wage = Int(wageTF.text!) {
            values.wage = wage
            if let cost = Int(itemCostTF.text!) {
                values.cost = cost
                let hours = values.cost/values.wage
                resultsLbl.text = "You need to work for \(hours) hours to buy the item"
            }
        }
        
    }

}

