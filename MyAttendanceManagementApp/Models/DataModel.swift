//
//  DataModel.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 04/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation


//baseURL + /employee
struct EmployeeData: Decodable{
    var image: String
    var employeeName: String
    var post: String
    var id: Int
    var number: Int
    var email: String
    var bloodGroup: String
    var city: String
}

//baseURL + /leaves
struct LeavesCount: Decodable{
    var sl: Int
    var cl: Int
    var pl: Int
}

//baseURL + /leaves/pl/pending/1
//baseURL + /leaves/pl/rejected/1
//baseURL + /leaves/pl/aproved/1
struct LeavesBase: Decodable{
    var Leaves: [Leave]
}

struct Leave: Decodable{
    var viewLabel: String
    var subject: String
    var date: String
}



//baseURL + /tasks
struct TaskBase: Decodable{
    var TasksData: [Tasks]
}

struct Tasks: Decodable{
    var viewLabel : String
    var subject : String
    var requestedBy : String
    var requestedOn : String
}

//baseURL + /approveLeave/1
struct ApproveLeave: Decodable{
    var image: String
    var subject: String
    var appliedBy: String
    var fromDate: String
    var toDate: String
    var totalDays: Int
    var leaveType: String
    var reason: String
}

//baseURL + /attendance/4
struct Attendnace: Decodable{
    var present: Int
    var absent: Int
}

//baseURL + /attendanceSummary/4
struct AttendanceSummary: Decodable{
    var monthName: String
    var total: Int
    var present: Int
    var absent: Int
    var holidays: Int
    var data: [AttendanceData]
}

struct AttendanceData: Decodable{
    var attendanceType: String
    var viewLabel: String
    var date: String
    var time: String
}

//baseURL + /holiday/4
struct Holiday: Decodable{
    var date: Int
    var holidayName: String
    var day: String
}
