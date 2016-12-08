//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ryan Shaver on 12/7/16.
//  Copyright © 2016 Ryan Shaver. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var btnStatePicker: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    
    let states = ["Alaska", "Alabama", "Arkansas", "California", "Texas", "West Virginia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.delegate = self
        statePicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStatePicker(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnStatePicker.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}

