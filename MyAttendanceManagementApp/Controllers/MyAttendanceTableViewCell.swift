//
//  MyAttendanceTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyAttendanceTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIViewRoundCorner!
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func layoutSubviews() {
        cellView.layer.cornerRadius = cellView.bounds.height / 2
    }
    
    func setColor(attendanceType: String){
        viewLabel.textColor = UIColor(hex: CellViewColor.staticColor(leaveType: attendanceType)) //red
        cellView.layer.borderColor = UIColor(hex: CellViewColor.staticColor(leaveType: attendanceType))?.cgColor
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

