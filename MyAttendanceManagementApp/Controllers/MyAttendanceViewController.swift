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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getAttendanceSummaryData()
    }
    

}

extension MyAttendanceViewController{
    func getAttendanceSummaryData(){
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/attendanceSummary/4")!, resultType: AttendanceSummary.self){
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
        cell?.cellImage.image = UIImage(named :attendanceData[indexPath.row].image)
        cell?.dateLabel.text = attendanceData[indexPath.row].date
        cell?.timeLabel.text = attendanceData[indexPath.row].time
        cell?.selectionStyle = .none
        return cell!
    }
    
}
