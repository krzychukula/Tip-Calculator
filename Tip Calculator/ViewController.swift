//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Krzysztof Kula on 29/02/16.
//  Copyright © 2016 Krzysztof Kula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var finalCostLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    var mealCost: Float = 0.0
    var tipPercent: Float = 20.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        costTextField.text = "100"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tipSliderChange(sender: AnyObject) {
        self.tipPercent = sender.value
        self.tipPercentLabel.text = "\(self.tipPercent)"
        
        self.finalCostLabel.text = "\(finalCost())"
    }

    @IBAction func costTextFieldChanged(sender: UITextField) {
        if let cost = Float(sender.text!) {
            self.mealCost = cost
        } else {
            self.mealCost = 0
        }
        
        
        self.finalCostLabel.text = "\(finalCost())"
    }
    
    func finalCost() -> Float {
        return mealCost + tipPercent / 100.0 * mealCost
    }
}

