//
//  ButtonAnimation.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 04/06/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation
import UIKit


extension UIButton{
    func pulstate(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
//    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
//        self.clipsToBounds = true  // add this to maintain corner radius
//        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
//        if let context = UIGraphicsGetCurrentContext() {
//            context.setFillColor(color.cgColor)
//            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
//            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
//            UIGraphicsEndImageContext()
//            self.setBackgroundImage(colorImage, for: forState)
//        }
//    }
}
