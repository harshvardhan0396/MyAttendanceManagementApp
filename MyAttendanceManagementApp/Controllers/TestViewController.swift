//
//  TestViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 16/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var leaveTypeSelector: UITextField!
    let salutations = ["Casual Leave", "Paid Leave", "Sick Leave"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        pickerView.delegate = self
        leaveTypeSelector.inputView = pickerView
    }
}

extension TestViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return salutations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return salutations[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        leaveTypeSelector.text = salutations[row]
        leaveTypeSelector.resignFirstResponder()
    }
    
    
}
