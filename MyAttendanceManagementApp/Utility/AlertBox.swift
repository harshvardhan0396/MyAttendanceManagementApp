//
//  AlertBox.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 10/06/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController{
    
    func alterBox(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
