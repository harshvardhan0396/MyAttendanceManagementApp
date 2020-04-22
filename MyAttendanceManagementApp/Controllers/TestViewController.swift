//
//  TestViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 16/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
extension TestViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TestTableViewCell
        return cell!
    }
    
    
}
