//
//  MyAttendanceViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyAttendanceViewController: UIViewController {
    var dateArray = ["2-jan,2020","3-jan,2020","4-jan,2020"]
    var timeArray = ["9:00 AM - 6:00 PM","",""]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}


extension MyAttendanceViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyAttendanceTableViewCell
        cell?.dateLabel.text = dateArray[indexPath.row]
        cell?.timeLabel.text = timeArray[indexPath.row]
        return cell!
    }
    
    
}
