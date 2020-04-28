//
//  MyLeavesViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyLeavesViewController: UIViewController {
    var dateArray = ["29 Aug, 2019","12 Oct, 2019","6 Dec, 2019"]
    var reasonArray = ["29 Aug, 2019","feeling sick","going out of station"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.approvedButtonPressed.setBordersSettings()
        self.pendingButtonPressed.setBordersSettings()
        self.rejectedButtonPressed.setBordersSettings()
    }
    
    @IBOutlet weak var rejectedButtonPressed: UIButton!
    @IBOutlet weak var approvedButtonPressed: UIButton!
    
    @IBOutlet weak var pendingButtonPressed: UIButton!
}

extension MyLeavesViewController: UITableViewDelegate, UITableViewDataSource{
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return dateArray.count
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyLeavesTableViewCell
        cell?.cellDateLabel.text = dateArray[indexPath.row]
        cell?.cellReasonLabel.text = reasonArray[indexPath.row]
        cell?.selectionStyle = .none
        return cell!
    }
    
     
}

//extension UIButton{
//    func buttonBorder(){
//        UIButton.layer.borderWidth = 2.0
//        UIButton.layer.borderColor = [UIColor .systemPink].CGColor;
//    }
//
//}


extension UIButton {
func setBordersSettings() {
        //let c1GreenColor = (UIColor(red: -0.108958, green: 0.714926, blue: 0.758113, alpha: 1.0))
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.systemPink.cgColor
        //self.setTitleColor(c1GreenColor, for: .normal)
        self.layer.masksToBounds = true
    }
}

