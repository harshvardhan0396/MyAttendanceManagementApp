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
    @IBOutlet weak var dateLbl: UILabel!
    
    
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
