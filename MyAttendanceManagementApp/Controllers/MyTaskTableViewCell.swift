//
//  MyTaskTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 15/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

var cellViewColor = CellViewColor()

class MyTaskTableViewCell: UITableViewCell {

    
   // @IBOutlet weak var leaveImage: UIImageView!
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var mainHeading: UILabel!
    
    @IBOutlet weak var requestedOnLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var requestedByLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func layoutSubviews() {
        cellView.layer.cornerRadius = cellView.bounds.height / 2
        if(viewLabel.text == "SL"){
            viewLabel.textColor = UIColor.systemRed
            cellView.layer.borderColor = UIColor.red.cgColor
        }
        else if (viewLabel.text == "PL"){
            viewLabel.textColor = UIColor.systemGreen
            
        }
        else if (viewLabel.text == "CL"){
            viewLabel.textColor = UIColor.systemPurple
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
