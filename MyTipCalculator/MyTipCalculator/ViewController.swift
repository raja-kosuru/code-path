//
//  ViewController.swift
//  MyTipCalculator
//
//  Created by raja kosuru on 3/11/17.
//  Copyright © 2017 raja kosuru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billEntryText: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var defaultTipPercentage : Double = 0.0
    
    let tipPercentages = [0.18, 0.20, 0.25]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultTipPercentage = Double(UserDefaults.standard.double(forKey: "DefaultTip")) / 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func tipControlChange(_ sender: Any) {
        calculateTip(sender)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        
        
        let bill = Double(billEntryText.text!) ?? 0
        var percentage = defaultTipPercentage
        
        
        if tipControl.selectedSegmentIndex >= 0
        {
            percentage = Double(tipPercentages[tipControl.selectedSegmentIndex])
        }
        
        
        let tip = bill * percentage
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

