//
//  DataModel.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 04/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation

struct EmployeeData: Decodable{
    var employeeName: String
    var employeeId: Int
    var employeeNumber: Int
    var employeeEmail: String
}
