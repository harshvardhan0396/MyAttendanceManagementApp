//
//  ApplyForLeaveViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//https://stackoverflow.com/questions/49974448/using-datepicker-for-multiple-textfields-in-ios-swift

import UIKit

class ApplyForLeaveViewController: UIViewController {
    let salutations = ["Casual Leave", "Paid Leave", "Sick Leave"]
    @IBOutlet weak var leavetypePicker: UITextField!
    @IBOutlet weak var fromDateText: UITextField!
    
    @IBOutlet weak var toDateText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fromDateText.delegate = self
        
        //for leave picker
        let pickerView = UIPickerView()
        pickerView.delegate = self
        leavetypePicker.inputView = pickerView

    }
    

}

extension ApplyForLeaveViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let datePicker = UIDatePicker()
        if textField == fromDateText {
            datePicker.datePickerMode = .date
        }
        if textField == toDateText {
            datePicker.datePickerMode = .date
        }
        fromDateText.inputView = datePicker
        toDateText.inputView = datePicker
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44))

        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButtonClicked))
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneButtonCicked))
        let flexibleButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, flexibleButton,doneButton], animated: false)
        fromDateText.inputAccessoryView = toolBar
        toDateText.inputAccessoryView = toolBar
    }
    @objc func doneButtonCicked() {
        if fromDateText.isFirstResponder {
            if let fromDatePicker = fromDateText.inputView as? UIDatePicker{
                let dateFormat = DateFormatter()
                dateFormat.dateStyle = .medium
                fromDateText.text = dateFormat.string(from: fromDatePicker.date)
            }
        }
        if toDateText.isFirstResponder {
            if let fromDatePicker = toDateText.inputView as? UIDatePicker{
                let dateFormat = DateFormatter()
                dateFormat.dateStyle = .medium
                toDateText.text = dateFormat.string(from: fromDatePicker.date)
            }
        }
        fromDateText.resignFirstResponder()
        toDateText.resignFirstResponder()
    }
    @objc func cancelButtonClicked(){
        fromDateText.resignFirstResponder()
        toDateText.resignFirstResponder()
    }
}

extension ApplyForLeaveViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    
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
        leavetypePicker.text = salutations[row]
        leavetypePicker.resignFirstResponder()
    }
}


