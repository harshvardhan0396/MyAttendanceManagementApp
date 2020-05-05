//
//  ViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    var dataManager = DataManager()
   
    @IBOutlet weak var LeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataManager.delegate = self
        navigationItem.hidesBackButton = true
        dataManager.getDataFromAPI()
    }
        
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension HomeViewController : AttendnaceDataManagerDelegate{
    func didUpdateEmployeeData(data: EmployeeData) {
        print(data.employeeName)
        print(data.employeeEmail)
    }
}
