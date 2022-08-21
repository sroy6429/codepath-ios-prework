//
//  ViewController.swift
//  Prework
//
//  Created by Sukriti on 8/21/22.
//  Copyright © 2022 Sukriti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var partySizeField: UITextField!
    @IBOutlet weak var costPerPersonLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountField.text!) ?? 0
        
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let partySize = Double(partySizeField.text!) ?? 1
        let perPersonTotal = total/partySize
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        costPerPersonLabel.text = String(format: "$%.2f", perPersonTotal)
        
        
    }
    
    
}

