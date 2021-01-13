//
//  ViewController.swift
//  prework
//
//  Created by Cleo Austein on 1/12/21.
//

import UIKit

class ViewController: UIViewController {

   
        @IBOutlet weak var billAmountTextField: UITextField!
        @IBOutlet weak var tipControl: UISegmentedControl!
        @IBOutlet weak var tipPercentageLabel: UILabel!
        @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get Initial Bill Amount & Calculate Tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //Calculate Tip & Total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip & Total Labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

