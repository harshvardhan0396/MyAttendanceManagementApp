//
//  TestViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 16/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    var menuIsVisible = false
    
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    
    @IBAction func barMenuButton(_ sender: Any) {
        if !menuIsVisible{
            leadingC.constant = 180
            trailingC.constant = -180
            menuIsVisible = true
        }
        else{
            leadingC.constant = 0
            trailingC.constant = 0
            menuIsVisible = false

        }
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
