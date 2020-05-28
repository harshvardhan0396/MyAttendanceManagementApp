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

    
    //@IBOutlet weak var welcomeLbl: CLTypingLabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.cornerRadius()
        
    }
    
}

extension UIButton{
    func cornerRadius(){
        layer.cornerRadius = 5
    }
}
