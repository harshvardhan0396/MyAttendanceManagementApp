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
    }


    @IBAction func approveButtonPrewwed(_ sender: UIButton) {
    }
    
    @IBAction func pendingButtonPressed(_ sender: Any) {
    }
    
    @IBAction func rejectedButtonPressed(_ sender: Any) {
    }
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

