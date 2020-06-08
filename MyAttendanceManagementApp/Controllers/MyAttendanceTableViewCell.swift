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
        if(viewLabel.text == "A"){
            viewLabel.textColor = UIColor(hex: "#e91f1fff") //red
            cellView.layer.borderColor = UIColor(hex: "#e91f1fff")?.cgColor
        }
        else if (viewLabel.text == "P"){
            viewLabel.textColor = UIColor(hex: "#25a534ff") //green
            cellView.layer.borderColor = UIColor(hex: "#25a534ff")?.cgColor
            
        }
        else if (viewLabel.text == "H"){
            viewLabel.textColor = UIColor(hex: "#8228eeff") //purple
            cellView.layer.borderColor = UIColor(hex: "#8228eeff")?.cgColor
        }
        else if (viewLabel.text == "NA"){
            viewLabel.textColor = UIColor.darkGray
            cellView.layer.borderColor = UIColor.darkGray.cgColor
        }
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

