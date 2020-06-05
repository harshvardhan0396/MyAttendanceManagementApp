//
//  MyLeavesTableViewCell.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 20/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

class MyLeavesTableViewCell: UITableViewCell {

    //@IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellDateLabel: UILabel!
    @IBOutlet weak var cellReasonLabel: UILabel!
    
    
    @IBOutlet weak var cellView: UIViewRoundCorner!
    @IBOutlet weak var viewLabel: UILabel!
    override func layoutSubviews() {
        cellView.layer.cornerRadius = cellView.bounds.height / 2
        if(viewLabel.text == "SL"){
            viewLabel.textColor = UIColor(hex: "#e91f1fff") //red
            cellView.layer.borderColor = UIColor(hex: "#e91f1fff")?.cgColor
        }
        else if (viewLabel.text == "PL"){
            viewLabel.textColor = UIColor(hex: "#25a534ff") //green
            cellView.layer.borderColor = UIColor(hex: "#25a534ff")?.cgColor
            
        }
        else if (viewLabel.text == "CL"){
            viewLabel.textColor = UIColor(hex: "#8228eeff") //purple
            cellView.layer.borderColor = UIColor(hex: "#8228eeff")?.cgColor
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
