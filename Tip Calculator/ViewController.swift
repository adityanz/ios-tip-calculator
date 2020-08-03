//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Aditya Dixit on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"
        let tip = 0
        
        let total = 0
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        tipMessage.text = "Thanks for using my app!"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        // This allows us to get the inital bill amount and calculate the tips
        let bill = Double(billAmountTextField.text!) ?? 0
        // this is the bill amount determined from the text field
        let tipPercentages = [0.15,0.18,0.20]
        // these are the sets of percentages that are present
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let val = tipControl.selectedSegmentIndex
        if (val == 0)
        {
            tipMessage.text = "Good tip 😃"
        }
        
        else if (val == 1)
        {
            tipMessage.text = "Great tip 💵"
        }
        
        else if (val == 2)
        {
            tipMessage.text = "Amazing tip 💰"
        }
        else
        {
            tipMessage.text = "Tipping supports people!"
        }
    }
    
}

