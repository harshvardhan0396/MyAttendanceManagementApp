//
//  APIRoot.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 05/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation



struct RootAPI{
    let baseURL: String = "https://private-e93d27-test110028.apiary-mock.com"

        lazy var employeeData = baseURL + "/employee"
        lazy var leaves = baseURL + "/leaves"
        lazy var attendance = baseURL + "/attendance/4"
        lazy var holiday = baseURL + "/holiday/4"
        lazy var tasks = baseURL + "/tasks"
        lazy var approveLeave = baseURL + "/approveLeave/1"
        lazy var approved = baseURL + "/leaves/pl/approved/1"
        lazy var pending = baseURL + "/leaves/pl/pending/1"
        lazy var rejected = baseURL + "/leaves/pl/rejected/1"
        lazy var attendanceSummaryApril = baseURL + "/attendanceSummaryApril/4"
        lazy var attendanceSummaryMay = baseURL + "/attendanceSummaryMay/5"
        lazy var attendanceSummaryJune = baseURL + "/attendanceSummaryJune/6"


}


