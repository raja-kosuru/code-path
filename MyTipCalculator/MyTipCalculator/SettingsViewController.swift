//
//  SettingsViewController.swift
//  MyTipCalculator
//
//  Created by raja kosuru on 3/11/17.
//  Copyright © 2017 raja kosuru. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tipDefaultText?.text = String(UserDefaults.standard.double(forKey: "DefaultTip"))
    }
    @IBOutlet weak var tipDefaultText: UITextField!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func saveClick(_ sender: Any) {
        let defaultPercentage = Double((tipDefaultText?.text)!) ?? 0
        
        UserDefaults.standard.set(defaultPercentage, forKey: "DefaultTip")
        UserDefaults.standard.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
