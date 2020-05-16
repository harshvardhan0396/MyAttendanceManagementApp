//
//  WelcomeViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit
import SwiftGifOrigin
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var welcomeLbl: CLTypingLabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLbl.text = "My Attendance Management App"
        gifImageView.loadGif(name: "gify")
        
        self.userNameTextField.addBottomBorder()
        self.passwordTextField.addBottomBorder()
    }
    
}

