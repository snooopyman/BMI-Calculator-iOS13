//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Armando Cáceres on 9/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if (bmiValue < 18.5) {
            bmi = BMI.init(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if (bmiValue < 24.9){
            bmi = BMI.init(value: bmiValue, advice: "Fir as a fiddle!", color: .green)
        } else {
            bmi = BMI.init(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
}
