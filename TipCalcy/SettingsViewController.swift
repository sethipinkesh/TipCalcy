//
//  SettingsViewController.swift
//  TipCalcy
//
//  Created by Sethi, Pinkesh on 3/12/17.
//  Copyright © 2017 Sethi, Pinkesh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let selectedIndex = defaults.integer(forKey: "SELECTED_SEGMENT_INDEX")
        percentSegment.selectedSegmentIndex = selectedIndex
        // Do any additional setup after loading the view.
    }

    @IBAction func onPercentChanged(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(percentSegment.selectedSegmentIndex, forKey: "SELECTED_SEGMENT_INDEX")
        defaults.synchronize()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
