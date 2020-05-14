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
    
//    var dateArray = ["29 Aug, 2019","12 Oct, 2019","6 Dec, 2019"]
//    var reasonArray = ["29 Aug, 2019","feeling sick","going out of station"]
    
    
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
//    @IBOutlet weak var rejectedButtonPressed: UIButton!
//    @IBOutlet weak var approvedButtonPressed: UIButton!
//    @IBOutlet weak var pendingButtonPressed: UIButton!
    
//   self.rejectedButtonPressed.setImage(UIImage.remapColor(UIColor.white, maskImage: UIImage(named: "nBg.png")), for: .normal)
    
//    approvedButtonPressed.backgroundColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getLeavesData(endPoint: "/leaves/pl/approved/1")
//        self.approvedButtonPressed.setBordersSettings()
//        self.pendingButtonPressed.setBordersSettings()
//        self.rejectedButtonPressed.setBordersSettings()
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
        cell?.cellImage.image = UIImage(named :leaveArray[indexPath.row].image)
        cell?.cellDateLabel.text = leaveArray[indexPath.row].date
        cell?.cellReasonLabel.text = leaveArray[indexPath.row].subject
        cell?.selectionStyle = .none
        return cell!
    }
    
     
}


//extension UIButton {
//func setBordersSettings() {
//        //let c1GreenColor = (UIColor(red: -0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
//        self.layer.borderWidth = 2.0
//        self.layer.cornerRadius = 5.0
//        self.layer.borderColor = UIColor.systemPink.cgColor
//        //self.setTitleColor(c1GreenColor, for: .normal)
//        self.layer.masksToBounds = true
//    }
//}
//
