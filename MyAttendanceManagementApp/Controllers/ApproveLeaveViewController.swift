//
//  ApproveLeaveViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class ApproveLeaveViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var fromDateTextField: UITextField!
    
    @IBOutlet weak var toDateTextField: UITextField!
    
    @IBOutlet weak var leaveTypeTextField: UITextField!
    
    @IBOutlet weak var totalDaysTextField: UITextField!
    
    @IBOutlet weak var reasonTextField: UITextView!
    
    @IBOutlet weak var rejectionTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.addBottomBorder()
        self.fromDateTextField.addBottomBorder()
        self.leaveTypeTextField.addBottomBorder()
        self.totalDaysTextField.addBottomBorder()
        self.toDateTextField.addBottomBorder()
        self.totalDaysTextField.addBottomBorder()
        self.rejectionTextField.addBottomBorder()
        self.reasonTextField.addBottomBorder()
        
     }
}


extension UITextField{
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
extension UITextView{
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        //borderStyle = .none
        layer.addSublayer(bottomLine)
    }  

}
