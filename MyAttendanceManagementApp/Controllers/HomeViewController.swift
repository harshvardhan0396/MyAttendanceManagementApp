//
//  ViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    
    var displayDateAndGreetings = DateAndGreetings()
    
    
    
    @IBOutlet weak var dateAndWeekDayLbl: UILabel!
    @IBOutlet weak var greetLbl: UILabel!
    @IBOutlet weak var employeeNameLbl: UILabel!
    
    @IBOutlet weak var slLbl: UILabel!
    @IBOutlet weak var clLbl: UILabel!
    @IBOutlet weak var plLbl: UILabel!
    
    @IBOutlet weak var totalTasksButton: UIButton!
    
    @IBOutlet weak var totalPresentButton: UIButton!
    @IBOutlet weak var totalAbsentButton: UIButton!
    
    @IBOutlet weak var holidayDateLbl: UILabel!
    @IBOutlet weak var holidayNameLbl: UILabel!
    @IBOutlet weak var holidayWeekDayLbl: UILabel!
    
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateAndWeekDayLbl.text = displayDateAndGreetings.getDateAndWeekDay()
        greetLbl.text = displayDateAndGreetings.sendGreetings()
        navigationItem.hidesBackButton = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(CheckInternet.Connection()){
            print("Internet is Connected")
            self.presentDataToHomePage()
        }
        else{
            alterBox(title: "Warning", message: "Make sure your network is connected")
            
        }
    }    
}

extension HomeViewController{
    
    func presentDataToHomePage(){
        
        let loader = self.startLoader()
        //getting employee data
        GetData.getEmployeeData(requestUrl: URL(string: RootAPI.employeeData)!, resultType: EmployeeData.self){(employeeResponse) in
            DispatchQueue.main.async{
                self.employeeNameLbl.text = employeeResponse.employeeName
                self.stopLoader(loader: loader)
            }
        }
        
        //getting leave data
        GetData.getEmployeeData(requestUrl: URL(string: RootAPI.leaves)!, resultType: LeavesCount.self){(leavesResponse) in
            DispatchQueue.main.async{
                self.clLbl.text = String(leavesResponse.cl)
                self.slLbl.text = String(leavesResponse.sl)
                self.plLbl.text = String(leavesResponse.pl)
            }
        }
        
        
        //getting attendance data
        GetData.getEmployeeData(requestUrl: URL(string: RootAPI.attendance)!, resultType: Attendnace.self){(attendanceResponse) in
            DispatchQueue.main.async{
                self.totalPresentButton.setTitle("\(attendanceResponse.present)", for: .normal)
                self.totalAbsentButton.setTitle("\(attendanceResponse.absent)", for: .normal)
            }
        }
        
        
        //getting holiday data
        GetData.getEmployeeData(requestUrl: URL(string: RootAPI.holiday)!, resultType: Holiday.self){(holidayResponse) in
            DispatchQueue.main.async{
                self.holidayDateLbl.text =  String(holidayResponse.date)
                self.holidayNameLbl.text =  holidayResponse.holidayName
                self.holidayWeekDayLbl.text =  holidayResponse.day
            }
        }
        
    }
    
}





