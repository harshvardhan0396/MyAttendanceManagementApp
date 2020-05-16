//
//  MyTaskTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyTaskTableViewCell: UITableViewCell {

    
    @IBOutlet weak var leaveImage: UIImageView!
    
    @IBOutlet weak var mainHeading: UILabel!
    
    @IBOutlet weak var requestedOnLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var requestedByLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func layoutSubviews() {
        leaveImage.layer.cornerRadius = leaveImage.bounds.height / 2
        leaveImage.clipsToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
