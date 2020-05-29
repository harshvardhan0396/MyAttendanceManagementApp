//
//  CellViewColor.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 28/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation

struct CellViewColor{
    var viewTextColor = ""
    mutating func getColor(leaveType: String) -> String{
        if(leaveType == "SL"){
            viewTextColor = "red"
        }
        else if(leaveType == "PL"){
            viewTextColor = "green"
        }
        return viewTextColor
    }
}
