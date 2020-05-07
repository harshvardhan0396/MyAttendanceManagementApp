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
    var displayDateAndGreetings = DateAndGreetings()
    
    @IBOutlet weak var dateAndWeekDayLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var greetLbl: UILabel!
    @IBOutlet weak var employeeNameLbl: UILabel!
    
    @IBOutlet weak var slLbl: UILabel!
    @IBOutlet weak var clLbl: UILabel!
    @IBOutlet weak var plLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateAndWeekDayLbl.text = displayDateAndGreetings.getDateAndWeekDay()
        greetLbl.text = displayDateAndGreetings.greetUser()
        dataManager.delegate = self
        navigationItem.hidesBackButton = true
        self.getDataFromAPI()
    }
        
    func getDataFromAPI(){
        dataManager.getEmployeeData(parameter: "/employee")
        dataManager.getLeaveeData(parameter: "/leaves")
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
    
    func didUpdateLeavesCount(data: LeavesCount) {
        DispatchQueue.main.async {
            self.plLbl.text = String(data.sl)
            self.clLbl.text = String(data.cl)
            self.slLbl.text = String(data.pl)
            //self.employeeNameLbl.text =  data.employeeName
        }
    }
}
