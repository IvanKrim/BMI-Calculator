//
//  FirstViewController.swift
//  BMI Calculator
//
//  Created by Kalabishka Ivan on 22.05.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    @IBOutlet var heightValue: UISlider!
    @IBOutlet var weightValue: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let heightValue = heightValue.value
        let weightValue = weightValue.value
        
        let bmiResult = weightValue / pow(heightValue, 2)
    }
    
}
