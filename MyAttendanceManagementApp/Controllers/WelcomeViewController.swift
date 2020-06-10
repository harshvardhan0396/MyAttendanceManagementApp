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

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.cornerRadius()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(CheckInternet.Connection()){
            print("Internet is Connected")
        }
        else{
            alterBox(title: "Warning", message: "Make sure your network is connected")
        }
    }
    
        
}

extension UIButton{
    func cornerRadius(){
        layer.cornerRadius = 5
    }
}
