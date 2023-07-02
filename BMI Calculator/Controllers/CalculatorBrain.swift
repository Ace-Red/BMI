//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nikita on 08.06.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmiValue:BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmi = weight/pow(height,2)
        if bmi < 18.5{
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "1", color: UIColor.blue)
        }
        else if bmi>=18.5 && bmi<=24.9{
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "2", color: UIColor.green)
        }
        else{
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "3", color: UIColor.red)
        }
        
    }
    func getBMIValue() -> String{
        return bmiValue?.value ?? "0.0"
    }
    func getAdvice() -> String{
        return bmiValue?.advice ?? "0.0"
    }
    func getColor() -> UIColor{
        return bmiValue?.color ?? UIColor.black
    }
}

struct BMI{
    let value: String
    let advice: String
    let color: UIColor
}
