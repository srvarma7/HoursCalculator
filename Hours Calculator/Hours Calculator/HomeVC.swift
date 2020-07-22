//
//  HomeVC.swift
//  Hours Calculator
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var wageTF: CustomTextField!
    @IBOutlet weak var itemCostTF: CustomTextField!
    
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var smallLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.backgroundColor = .orange
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)

        itemCostTF.inputAccessoryView = calcBtn
        changeLabelVisibility(flag: true)
    }

    @objc func calculate() {
        if let wage = Double(wageTF.text!), let cost = Double(itemCostTF.text!) {
            view.endEditing(true)
            let hours = (cost / wage).rounded(.up)
            resultsLbl.text = "\(hours)"
            smallLbl.text = "hours"
            changeLabelVisibility(flag: false)
        }
    }
     
    @IBAction func onClearTapped(_ sender: Any) {
        wageTF.text = ""
        itemCostTF.text = ""
        changeLabelVisibility(flag: true)
    }
    
    func changeLabelVisibility(flag: Bool) {
        resultsLbl.isHidden = flag
        smallLbl.isHidden = flag
    }
}

