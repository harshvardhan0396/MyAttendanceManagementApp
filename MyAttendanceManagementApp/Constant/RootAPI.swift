//
//  APIRoot.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 05/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation



struct RootAPI{
   static let baseURL: String = "https://private-e93d27-test110028.apiary-mock.com"

        static let employeeData = RootAPI.baseURL + "/employee"
        static let leaves = baseURL + "/leaves"
        static let attendance = baseURL + "/attendance/4"
        static let holiday = baseURL + "/holiday/4"
        static let tasks = baseURL + "/tasks"
        static let approveLeave = baseURL + "/approveLeave/1"
        static let approved = baseURL + "/leaves/pl/approved/1"
        static let pending = baseURL + "/leaves/pl/pending/1"
        static let rejected = baseURL + "/leaves/pl/rejected/1"
        static let attendanceSummaryApril = baseURL + "/attendanceSummaryApril/4"
        static let attendanceSummaryMay = baseURL + "/attendanceSummaryMay/5"
        static let attendanceSummaryJune = baseURL + "/attendanceSummaryJune/6"


}


