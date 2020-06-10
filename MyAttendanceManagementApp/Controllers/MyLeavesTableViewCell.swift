//
//  MyLeavesTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyLeavesTableViewCell: UITableViewCell {

    @IBOutlet weak var cellDateLabel: UILabel!
    @IBOutlet weak var cellReasonLabel: UILabel!
    
    
    @IBOutlet weak var cellView: UIViewRoundCorner!
    @IBOutlet weak var viewLabel: UILabel!
    override func layoutSubviews() {
        cellView.layer.cornerRadius = cellView.bounds.height / 2
    }
    
    func setColor(leaveType: String){
        viewLabel.textColor = UIColor(hex: cellColor.setCellColor(leaveType: leaveType)) //red
        cellView.layer.borderColor = UIColor(hex: cellColor.setCellColor(leaveType: leaveType))?.cgColor
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
