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
    var presentDateandWeekDay = DateAndWeekDay()
    
    @IBOutlet weak var dateAndWeekDayLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var greetLbl: UILabel!
    @IBOutlet weak var employeeNameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateAndWeekDayLbl.text = presentDateandWeekDay.getDateAndWeekDay()
        dataManager.delegate = self
        navigationItem.hidesBackButton = true
        self.getDataFromAPI()
    }
        
    func getDataFromAPI(){
        dataManager.getData(parameter: "/employee")
        
    }
    @IBAction func logoutButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension HomeViewController : AttendnaceDataManagerDelegate{
    func didUpdateEmployeeData(data: EmployeeData) {
        DispatchQueue.main.async {
            self.employeeNameLbl.text =  data.employeeName
        }
    }
}
