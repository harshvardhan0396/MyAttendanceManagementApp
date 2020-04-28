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
    
    @IBOutlet weak var loginButtonPressed: UIButton!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
//        let window = UIWindow()
//        let story = UIStoryboard(name: "Main", bundle:nil)
//        let vc = story.instantiateViewController(withIdentifier: "homeViewController") as! HomeViewController
//        UIApplication.shared.windows.first?.rootViewController = vc
//        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLbl.text = "My Attendance Management App"
        gifImageView.loadGif(name: "gify")
        
        self.userNameTextField.addBottomBorder()
        self.passwordTextField.addBottomBorder()
    }
    
}

