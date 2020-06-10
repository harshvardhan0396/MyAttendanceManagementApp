//
//  MyTasksViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyTasksViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
   
    var totalTasks: Int = 0
    
    
    var tasksData = [Tasks]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getTasksData()
        
        
    }
}

extension MyTasksViewController{
    func getTasksData(){
        let myTaskLoader = self.startLoader()
        getData.employeeData(requestUrl: URL(string: rootAPI.tasks)!, resultType: [Tasks].self){
            (tasksResponse) in
            self.stopLoader(loader: myTaskLoader)
            for arr in tasksResponse{
                self.tasksData.append(arr)
            }
            DispatchQueue.main.async{
                self.tableView?.reloadData()
            }
        }
    }
}

extension MyTasksViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.totalTasks = tasksData.count
        
        return self.tasksData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTaskTableViewCell
        cell.viewLabel.text = tasksData[indexPath.row].viewLabel
        cell.subjectLbl.text = tasksData[indexPath.row].subject
        cell.dateLbl.text = tasksData[indexPath.row].requestedOn
        cell.nameLbl.text = tasksData[indexPath.row].requestedBy
        let leaveType = tasksData[indexPath.row].viewLabel
        cell.setColor(leaveType: leaveType)
        
        return cell
    }
}

