//
//  CellViewColor.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 28/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation
import UIKit


class CellViewColor{
    var color: String = ""
    
    func setCellColor(leaveType: String) -> String{
        
        if(leaveType == "SL" || leaveType == "A"){
            self.color = "#e91f1fff"//?.cgColor //red
            
        }
        else if (leaveType == "PL" || leaveType == "P"){
            self.color = "#25a534ff" //green
            
            
        }
        else if (leaveType == "CL" || leaveType == "H"){
            self.color = "#8228eeff" //purple
        }
        else if (leaveType == "NA"){
            self.color = "#b4b4b4FF" //gray
        }
        
        return color
    }
}
