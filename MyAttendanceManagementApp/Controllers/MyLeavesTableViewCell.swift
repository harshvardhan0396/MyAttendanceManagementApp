//
//  MyLeavesTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyLeavesTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellDateLabel: UILabel!
    @IBOutlet weak var cellReasonLabel: UILabel!
    
    override func layoutSubviews() {
        cellImage.layer.cornerRadius = cellImage.bounds.height / 2
        cellImage.clipsToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
//
//extension UIImageView{
//    func circularImage(){
//        func makeRounded() {
//
//            self.layer.borderWidth = 1
//            self.layer.masksToBounds = false
//            self.layer.borderColor = UIColor.black.cgColor
//            self.layer.cornerRadius = self.frame.height / 2
//            self.clipsToBounds = true
//        }
//    }
//}
//
//
