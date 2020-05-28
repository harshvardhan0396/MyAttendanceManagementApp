//
//  ApproveLeaveViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class ApproveLeaveViewController: UIViewController {

    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var fromDateTextField: UITextField!
    @IBOutlet weak var toDateTextField: UITextField!
    @IBOutlet weak var leaveTypeTextField: UITextField!
    @IBOutlet weak var totalDaysTextField: UITextField!
    @IBOutlet weak var reasonTextField: UITextView!
    @IBOutlet weak var rejectionTextField: UITextView!
    
    
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var applyButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        applyButton.cornerRadius()
        cancelButton.cornerRadius()
        
//        self.nameTextField.addBottomBorder()
//        self.fromDateTextField.addBottomBorder()
//        self.leaveTypeTextField.addBottomBorder()
//        self.totalDaysTextField.addBottomBorder()
//        self.toDateTextField.addBottomBorder()
//        self.totalDaysTextField.addBottomBorder()
//        self.rejectionTextField.addBottomBorder()
//        self.reasonTextField.addBottomBorder()
        
        self.getApproveLeaveData()
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
        layer.addSublayer(bottomLine)
    }  

}


extension ApproveLeaveViewController{
    func getApproveLeaveData(){
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/approveLeave/1")!, resultType: ApproveLeave.self){
            (approveLeaveResponse) in
                DispatchQueue.main.async{
                    self.nameTextField.text = approveLeaveResponse.appliedBy
                    self.fromDateTextField.text = approveLeaveResponse.fromDate
                    self.toDateTextField.text = approveLeaveResponse.toDate
                    self.leaveTypeTextField.text = approveLeaveResponse.leaveType
                    self.totalDaysTextField.text = String(approveLeaveResponse.totalDays)
                    self.reasonTextField.text = approveLeaveResponse.reason
                }
            }
    }
}
