//
//  TestButtonViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 11/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit
var borderSettings = MyLeavesViewController()
class TestButtonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
        
    @IBAction func controlBtn(_ sender: UIButton) {
        
    
    }
    
    var testOneArr = ["abc", "def", "ghi"]
    var testTwoArr = ["jkl", "mno", "pqr"]

    var testThreeArr = ["stu", "vxx", "yz"]
    var testFourArr = ["aab", "aac", "aad"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

}


extension TestButtonViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.testOneArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TestButtonTableViewCell
        
        return cell!
    }
    
    
}
