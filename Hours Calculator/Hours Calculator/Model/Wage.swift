//
//  Values.swift
//  Hours Calculator
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import Foundation

class Wage {
    
    class func calWage(forWage wage: Double, forCost cost: Double) -> Int {
        return Int((cost / wage).rounded(.up))
    }
    
}
