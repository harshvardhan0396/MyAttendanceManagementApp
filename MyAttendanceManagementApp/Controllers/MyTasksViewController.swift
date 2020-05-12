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
    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    var totalTasks: Int = 0
    
//    var requestedDateArr = []()
//
//    var requestedByArr = []()
    
    var tasksData = [Tasks]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getTasksData()

        // Do any additional setup after loading the view.
    }
}

extension MyTasksViewController{
    
    func getTasksData(){
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + "/tasks")!, resultType: [Tasks].self){
            (tasksResponse) in
            for arr in tasksResponse{
                self.tasksData.append(arr)
                DispatchQueue.main.async{
                    self.tableView?.reloadData()
                }
            }
            //print([self.tasksData])
        }
    }
}

extension MyTasksViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.totalTasks = tasksData.count
        return self.tasksData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyTaskTableViewCell
            cell?.leaveImage.image = UIImage(named :tasksData[indexPath.row].image)
            cell?.subjectLbl.text = tasksData[indexPath.row].subject
            cell?.dateLbl.text = tasksData[indexPath.row].requestedOn
            cell?.nameLbl.text = tasksData[indexPath.row].requestedBy
            print(tasksData[indexPath.row].requestedBy)
        return cell!
    }
}

