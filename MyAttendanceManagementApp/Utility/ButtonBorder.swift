//
//  ButtonBorder.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 22/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

//class BorderedButton: UIButton{
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        layer.borderWidth = 4/UIScreen.main.nativeScale
//        layer.borderColor = UIColor.systemPink.cgColor
//
//    }
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        layer.cornerRadius = frame.height/5
//    }
    
    
@IBDesignable class BorderedButton: UIButton {

    @IBInspectable var borderColor: UIColor? {
        didSet {
            if let bColor = borderColor {
                self.layer.borderColor = bColor.cgColor
            }
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }

    override var isHighlighted: Bool {
        didSet {
            guard let currentBorderColor = borderColor else {
                return
            }

            let fadedColor = currentBorderColor.withAlphaComponent(0.2).cgColor

            if isHighlighted {
                layer.borderColor = fadedColor
            } else {

                self.layer.borderColor = currentBorderColor.cgColor

                let animation = CABasicAnimation(keyPath: "borderColor")
                animation.fromValue = fadedColor
                animation.toValue = currentBorderColor.cgColor
                animation.duration = 0.4
                self.layer.add(animation, forKey: "")
            }
        }
    }
}

