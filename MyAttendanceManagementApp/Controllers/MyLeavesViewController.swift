//
//  MyLeavesViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyLeavesViewController: UIViewController {
    
    var rootAPI = RootAPI()
    var getData = GetDataFromAPI()
    
    var leaveArray = [Leave]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func controlButton(_ sender: UIButton) {
        if(sender.tag == 1){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: "/leaves/pl/approved/1")
            
        }
        else if(sender.tag == 2){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: "/leaves/pl/pending/1")
        }
        else if(sender.tag == 3){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: "/leaves/pl/rejected/1")
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getLeavesData(endPoint: "/leaves/pl/approved/1")
    }
}

extension MyLeavesViewController{
    
    func getLeavesData(endPoint: String){
        getData.employeeData(requestUrl: URL(string: rootAPI.baseURL + endPoint)!, resultType: [Leave].self){
            (leavesResponse) in
            for arr in leavesResponse{
                self.leaveArray.append(arr)
                DispatchQueue.main.async{
                    self.tableView?.reloadData()
                }
            }
        }
    }
}



extension MyLeavesViewController: UITableViewDelegate, UITableViewDataSource{
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return leaveArray.count
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyLeavesTableViewCell
        cell?.viewLabel.text = leaveArray[indexPath.row].viewLabel
        cell?.cellDateLabel.text = leaveArray[indexPath.row].date
        cell?.cellReasonLabel.text = leaveArray[indexPath.row].subject
        cell?.selectionStyle = .none
        return cell!
    }
    
     
}

