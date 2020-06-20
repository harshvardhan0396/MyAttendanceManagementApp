//
//  MyLeavesViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//


import UIKit

class MyLeavesViewController: UIViewController {
    
    
    var leaveArray = [Leave]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func controlButton(_ sender: UIButton) {
        
        sender.pulstate()
        
                    
        if(sender.tag == 1){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: RootAPI.approved)
            
        }
        else if(sender.tag == 2){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: RootAPI.pending)
        }
        else if(sender.tag == 3){
            leaveArray.removeAll()
            self.getLeavesData(endPoint: RootAPI.rejected)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.getLeavesData(endPoint: RootAPI.approved)
    }
}

extension MyLeavesViewController{
    
    func getLeavesData(endPoint: String){
        let myLeavesloader = self.startLoader()
        GetData.getEmployeeData(requestUrl: URL(string: endPoint)!, resultType: [Leave].self){
            (leavesResponse) in
            self.stopLoader(loader: myLeavesloader)
            for arr in leavesResponse{
                self.leaveArray.append(arr)
            }
            DispatchQueue.main.async{
                self.tableView?.reloadData()
            }
        }
    }
}



extension MyLeavesViewController: UITableViewDelegate, UITableViewDataSource{
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return leaveArray.count
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyLeavesTableViewCell
        cell.viewLabel.text = leaveArray[indexPath.row].viewLabel
        cell.cellDateLabel.text = leaveArray[indexPath.row].date
        cell.cellReasonLabel.text = leaveArray[indexPath.row].subject
        
        let leaveType = leaveArray[indexPath.row].viewLabel
        cell.setColor(leaveType: leaveType)
        
        cell.selectionStyle = .none
        return cell
    }
    
     
}

