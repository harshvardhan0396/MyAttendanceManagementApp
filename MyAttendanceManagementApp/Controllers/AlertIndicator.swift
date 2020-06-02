//
//  AlertIndicator.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 01/06/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

extension UIViewController{
    func alertIndicator() -> UIAlertController{
        let alert = UIAlertController(title: nil, message: "Please Wait", preferredStyle: .alert)
        
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 10, y:5, width: 50, height: 50))
        print("start loader function called")
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        indicator.style = .large
        alert.view.addSubview(indicator)
        present(alert, animated: true, completion: nil)
        return alert
    }
    
    func stopLoader(loader: UIAlertController){
        DispatchQueue.main.async {
            print("stop loader function called")
            loader.dismiss(animated: true, completion: nil)
        }
    }
}

