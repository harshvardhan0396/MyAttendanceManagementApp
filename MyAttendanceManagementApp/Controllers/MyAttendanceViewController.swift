//
//  MyAttendanceViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyAttendanceViewController: UIViewController {
    
    var attendanceData = [AttendanceData]()
        
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var monthNameLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var presentLbl: UILabel!
    @IBOutlet weak var absentLbl: UILabel!
    @IBOutlet weak var holidayLbl: UILabel!
    
    var currentMonth = 5
    //var newMonth = 5
    @IBAction func changeMonth(_ sender: UIButton) {
        
        //print(currentMonth)
        if (sender.tag == 1){
            currentMonth = currentMonth-1
        }
        else if(sender.tag == 2){
            currentMonth = currentMonth+1
        }
        checkMonth(monthId: currentMonth)
        
    }
    
    func checkMonth(monthId: Int){
        //print(monthId)
        if(monthId == 4){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: rootAPI.attendanceSummaryApril)
        }
        else if(monthId == 5){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: rootAPI.attendanceSummaryMay)
        }
        else if(monthId == 6){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: rootAPI.attendanceSummaryJune)
        }
        else{
            print("no data available...")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getAttendanceSummaryData(endPoint: rootAPI.attendanceSummaryMay)
    }
    

}

extension MyAttendanceViewController{
    func getAttendanceSummaryData(endPoint: String){
        let myAttendanceLoader = self.startLoader()
        employee.getEmployeeData(requestUrl: URL(string: endPoint)!, resultType: AttendanceSummary.self){
            (attendanceSummaryResponse) in
            self.stopLoader(loader: myAttendanceLoader)
            DispatchQueue.main.async{
                self.monthNameLbl?.text = attendanceSummaryResponse.monthName
                self.totalLbl?.text = String(attendanceSummaryResponse.total)
                self.presentLbl?.text = String(attendanceSummaryResponse.present)
                self.absentLbl?.text = String(attendanceSummaryResponse.absent)
                self.holidayLbl?.text = String(attendanceSummaryResponse.holidays)
                
                for arr in attendanceSummaryResponse.data{
                    self.attendanceData.append(arr)
                }
                DispatchQueue.main.async{
                    self.tableView?.reloadData()
                }
            }
        }
    }
}

extension MyAttendanceViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attendanceData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyAttendanceTableViewCell
        cell.viewLabel.text = attendanceData[indexPath.row].viewLabel
        cell.dateLabel.text = attendanceData[indexPath.row].date
        cell.timeLabel.text = attendanceData[indexPath.row].time
        
        let attendanceType = attendanceData[indexPath.row].viewLabel
        cell.setColor(attendanceType: attendanceType)
        cell.selectionStyle = .none
        return cell
    }
    
 
}
