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

    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func layoutSubviews() {
        cellView.layer.cornerRadius = cellView.bounds.height / 2
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setColor(leaveType: String){
        viewLabel.textColor = UIColor(hex: cellColor.setCellColor(leaveType: leaveType)) //red
        cellView.layer.borderColor = UIColor(hex: cellColor.setCellColor(leaveType: leaveType))?.cgColor
    }

}
