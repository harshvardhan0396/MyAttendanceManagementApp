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
    
    override func viewDidAppear(_ animated: Bool) {
        if(CheckInternet.Connection()){
            print("Internet is Connected")
        }
        else{
            alertMessage()
        }
    }
    
    func alertMessage(){
        let alert = UIAlertController(title: "WARNING", message: "Make sure your network is connected", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

extension UIButton{
    func cornerRadius(){
        layer.cornerRadius = 5
    }
}
