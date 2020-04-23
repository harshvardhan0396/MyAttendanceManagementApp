//
//  ButtonBorder.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 22/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class ButtonBorder: UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 4/UIScreen.main.nativeScale
        layer.borderColor = UIColor.systemPink.cgColor
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height/5
    }
}
