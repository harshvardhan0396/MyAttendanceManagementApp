//
//  ApplyForLeaveViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//https://stackoverflow.com/questions/49974448/using-datepicker-for-multiple-textfields-in-ios-swift

import UIKit

class ApplyForLeaveViewController: UIViewController {
    
    let salutations = ["","Casual Leave", "Paid Leave", "Sick Leave"]
    @IBOutlet weak var leavetypePicker: UITextField!
    
    @IBOutlet weak var fromDateText: UITextField!
    @IBOutlet weak var toDateText: UITextField!

    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var totalDaysTextField: UITextField!
    @IBOutlet weak var appliedByTextField: UITextField!
    
    
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        applyButton.cornerRadius()
        cancelButton.cornerRadius()
                
        //for date picker
        fromDateText.delegate = self
        toDateText.delegate = self
        
        
        //for leave picker
        let pickerView = UIPickerView()
        pickerView.delegate = self
        leavetypePicker.inputView = pickerView
    }
    
}

extension ApplyForLeaveViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        

        let toolBar = UIToolbar()
        toolBar.sizeToFit()

        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButtonClicked))
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneButtonCicked))
        
        let flexibleButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([cancelButton, flexibleButton, doneButton], animated: false)
        
        if textField == fromDateText {
            datePicker.datePickerMode = .date
        }
        if textField == toDateText {
            datePicker.datePickerMode = .date
        }

        fromDateText.inputAccessoryView = toolBar
        toDateText.inputAccessoryView = toolBar

        fromDateText.inputView = datePicker
        toDateText.inputView = datePicker
        
        datePicker.datePickerMode = .date
        
    }
    
    @objc func cancelButtonClicked(){
        fromDateText.resignFirstResponder()
        toDateText.resignFirstResponder()
    }

    @objc func doneButtonCicked() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        var startDate: Date
        var endDate: Date
        
        
        if fromDateText.isFirstResponder{
            fromDateText.text = dateFormatter.string(from: datePicker.date)
            fromDateText.resignFirstResponder()
        }
        startDate = dateFormatter.date(from: fromDateText.text!)! as Date
        if toDateText.isFirstResponder{
            toDateText.text = dateFormatter.string(from: datePicker.date)
            endDate = dateFormatter.date(from: toDateText.text!)! as Date
            toDateText.resignFirstResponder()
            let days = getNumberOfDays(sDate: startDate, eDate: endDate) + 1
            totalDaysTextField.text = "\(days)"
        }
    }
    
    func getNumberOfDays(sDate: Date, eDate: Date) -> Int{
        return Calendar.current.dateComponents([.day], from: sDate, to: eDate).day!
    }
        

}


//leave type
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

