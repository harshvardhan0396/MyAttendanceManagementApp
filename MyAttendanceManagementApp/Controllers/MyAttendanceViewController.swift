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
    
    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    
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
        print(monthId)
        if(monthId == 4){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: "/attendanceSummaryApril/4")
        }
        else if(monthId == 5){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: "/attendanceSummaryMay/5")
        }
        else if(monthId == 6){
            attendanceData.removeAll()
            self.getAttendanceSummaryData(endPoint: "/attendanceSummaryJune/6")
        }
        else{
            print("no data available...")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getAttendanceSummaryData(endPoint: "/attendanceSummaryMay/5")
    }
    

}

extension MyAttendanceViewController{
    func getAttendanceSummaryData(endPoint: String){
        let loader = self.alertIndicator()
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + endPoint)!, resultType: AttendanceSummary.self){
            (attendanceSummaryResponse) in
            DispatchQueue.main.async{
                self.monthNameLbl?.text = attendanceSummaryResponse.monthName
                self.totalLbl?.text = String(attendanceSummaryResponse.total)
                self.presentLbl?.text = String(attendanceSummaryResponse.present)
                self.absentLbl?.text = String(attendanceSummaryResponse.absent)
                self.holidayLbl?.text = String(attendanceSummaryResponse.holidays)
                
                for arr in attendanceSummaryResponse.data{
                    self.attendanceData.append(arr)
                    DispatchQueue.main.async{
                        self.tableView?.reloadData()
                    }
                }
                self.stopLoader(loader: loader)
            }
        }
    }
}

extension MyAttendanceViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attendanceData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyAttendanceTableViewCell
        cell?.viewLabel.text = attendanceData[indexPath.row].viewLabel
        cell?.dateLabel.text = attendanceData[indexPath.row].date
        cell?.timeLabel.text = attendanceData[indexPath.row].time
        
        //tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        
        cell?.selectionStyle = .none
        return cell!
    }
    
 
}
