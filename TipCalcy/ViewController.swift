//
//  ViewController.swift
//  TipCalcy
//
//  Created by Sethi, Pinkesh on 3/10/17.
//  Copyright © 2017 Sethi, Pinkesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentSgement: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let selectedIndex = defaults.integer(forKey: "SELECTED_SEGMENT_INDEX")
        tipPercentSgement.selectedSegmentIndex = selectedIndex
        tipPercentSgement.sendActions(for: UIControlEvents.valueChanged)
        self.amountTextField.becomeFirstResponder()
        
        super.viewWillAppear(animated)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let percent = [0.15,0.20,0.25]
        
        let billAmount =  Double(amountTextField.text!) ?? 0
        let tipAmount = billAmount * percent [tipPercentSgement.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount
        tipLabel.text = String(format: "$%.2f",tipAmount)
        totalLabel.text = String(format: "$%.2f",totalAmount)
    }
    @IBAction func onScreenTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

