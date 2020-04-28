//
//  ViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
   
    @IBOutlet weak var LeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }
    
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

