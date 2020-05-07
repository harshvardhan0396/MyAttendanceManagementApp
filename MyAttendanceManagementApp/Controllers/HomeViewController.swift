//
//  ViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    
    var displayDateAndGreetings = DateAndGreetings()
    
    @IBOutlet weak var dateAndWeekDayLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var greetLbl: UILabel!
    @IBOutlet weak var employeeNameLbl: UILabel!
    
    @IBOutlet weak var slLbl: UILabel!
    @IBOutlet weak var clLbl: UILabel!
    @IBOutlet weak var plLbl: UILabel!
    
    
    @IBOutlet weak var totalPresentLbl: UIButton!
    @IBOutlet weak var totalAbsentLbl: UIButton!
    
    @IBOutlet weak var holidayDateLbl: UILabel!
    @IBOutlet weak var holidayNameLbl: UILabel!
    @IBOutlet weak var holidayWeekDayLbl: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        dateAndWeekDayLbl.text = displayDateAndGreetings.getDateAndWeekDay()
        greetLbl.text = displayDateAndGreetings.greetUser()
        navigationItem.hidesBackButton = true
        self.presentDataToHomePage()
    }
        
    
    
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension HomeViewController{
    
    func presentDataToHomePage(){
        
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/employee")!, resultType: EmployeeData.self){(employeeResponse) in
            DispatchQueue.main.async{
                self.employeeNameLbl.text = employeeResponse.employeeName
            }
        }


        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/leaves")!, resultType: LeavesCount.self){(leavesResponse) in
            DispatchQueue.main.async{
                self.clLbl.text = String(leavesResponse.cl)
                self.slLbl.text = String(leavesResponse.sl)
                self.plLbl.text = String(leavesResponse.pl)
            }
        }

        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/attendance/4")!, resultType: Attendnace.self){(attendanceResponse) in
                DispatchQueue.main.async{
                    self.totalPresentLbl.setTitle("\(attendanceResponse.present)", for: .normal)
                    self.totalAbsentLbl.setTitle("\(attendanceResponse.absent)", for: .normal)
                }
        }
        
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/holiday/4")!, resultType: Holiday.self){(holidayResponse) in
                DispatchQueue.main.async{
                    self.holidayDateLbl.text =  String(holidayResponse.date)
                    self.holidayNameLbl.text =  holidayResponse.holidayName
                    self.holidayWeekDayLbl.text =  holidayResponse.day
                }
        }

    }

}
