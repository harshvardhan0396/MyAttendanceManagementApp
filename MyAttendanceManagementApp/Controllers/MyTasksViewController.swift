//
//  MyTasksViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyTasksViewController: UIViewController {

    
    var requestedDateLbl = ["10/02/2020","18/03/2020","21/03/2020"]

    var requestedByLbl = ["Harshvardhan","Chirag","Edris"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

}
extension MyTasksViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return requestedByLbl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyTaskTableViewCell
        cell?.dateLbl.text = requestedDateLbl[indexPath.row]
        cell?.nameLbl.text = requestedByLbl[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "ApproveLeaveViewController") as? ApproveLeaveViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}

