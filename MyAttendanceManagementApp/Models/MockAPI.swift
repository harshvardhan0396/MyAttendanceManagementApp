//
//  MockAPI.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 29/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

//import Foundation
//
//
//FORMAT: 1A
//HOST: https://polls.apiblueprint.org/
//
//# Attendance Management
//
//This is a Mock API for Attendnace Management App
//            
//## Employee Details [/employee]
//
//### Employee Details [GET]
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//    
//            {
//                "image": "emp_img_harsh",
//                "employeeName": "Harshvardhan",
//                "post": "Trainee Software Engineer",
//                "id": 1,
//                "number": 9713177616,
//                "email": "harsh@mobiuso.com",
//                "bloodGroup": "O+",
//                "city": "Ahmedabad"
//            }
//
//## Leaves [/leaves]
//
//### Show Total Leave Data [GET]
//
//+ Response 200 (application/json)
//
//    + Body
//
//    
//            {
//                "sl" : 4,
//                "cl" : 3,
//                "pl" : 6
//            }
//
//## Pl Leaves Approved [/leaves/pl/approved/{id}]
//
//### Approved Data [GET]
//
//+ Parameter
//    
//    + id: `1` (number, optional)
//        
//        +   Default: `2`
//
//+ Response 200 (application/json)
//
//    + Body
//
//  
//            [
//                {
//                    "viewLabel" : "SL",
//                    "subject" : "Sick Leave",
//                    "date" : "11 March, 2020"
//                },
//                {
//                    "viewLabel" : "CL",
//                    "subject" : "Casual Leave",
//                    "date" : "25 April, 2020"
//                }
//            ]
//
//## Pl Leaves Pending [/leaves/pl/pending/{id}]
//
//### Pending Data [GET]
//
//+ Parameter
//    
//    + id: `1` (number, optional)
//        
//        +   Default: `2`
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            [
//                {
//                    "viewLabel" : "PL",
//                    "subject" : "Paid Leave",
//                    "date" : "17 May, 2020"
//                },
//                {
//                    "viewLabel" : "CL",
//                    "subject" : "Casual Leave",
//                    "date" : "18 May, 2020"
//                }
//            ]
//
//## Pl Leaves Rejected [/leaves/pl/rejected/{id}]
//
//### Rejected Data [GET]
//
//+ Parameter
//    
//    + id: `1` (number, optional)
//        
//        +   Default: `2`
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            [
//                {
//                    "viewLabel" : "SL",
//                    "subject" : "Paid Leave",
//                    "date" : "3 May, 2020"
//                },
//                {
//                    "viewLabel" : "CL",
//                    "subject" : "Casual Leave",
//                    "date" : "4 April, 2020"
//                }
//            ]
//
//## Tasks [/tasks]
//
//### Check For Tasks [GET]
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            [
//                {
//                    "viewLabel" : "SL",
//                    "subject" : "Sick Leave",
//                    "requestedBy" : "Harsh",
//                    "requestedOn" : "28 April, 2020"
//                },
//                {
//                    "viewLabel" : "PL",
//                    "subject" : "Paid Leave",
//                    "requestedBy" : "Edris",
//                    "requestedOn" : "29 April, 2020"
//                }
//            
//            ]
//
//## Approve Leave [/approveLeave/{id}]
//
//### Check For Tasks [GET]
//
//+ Parameter
//    
//    + id: `1` (number, optional)
//        
//        +   Default: `2`
//
//+ Response 200 (application/json)
//
//    + Body
//
//    
//            {
//                "image" : "SL",
//                "subject" : "Sick Leave",
//                "appliedBy" : "Harshvardhan",
//                "fromDate" : "28 April, 2020",
//                "toDate" : "30 April, 2020",
//                "totalDays" : 3,
//                "leaveType" : "Sick Leave",
//                "reason" : "feeling sick since last night"
//            }
//
//## Attendance [/attendance/{monthId}]
//
//### Attendance Data [GET]
//
//+ Parameter
//
//    + monthId : `4` (number)
//        
//
//+ Response 200 (application/json)
//    
//    + Body
//    
//
//    
//            {
//                "present" : 5,
//                "absent" : 1
//            }
//
//## Attendance Summary May [/attendanceSummaryMay/{monthId}]
//
//### Attendance Data With Summary [GET]
//
//+ Parameter
//
//    + monthId : `5` (number)
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            {
//                "monthName" : "May",
//                "total" : 7,
//                "present" : 5,
//                "absent" : 1,
//                "holidays" : 1,
//                "data" : [
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "2 May, 2020",
//                        "time" : "9:00 am - 6:00 pm"
//                    },
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "3 May, 2020",
//                        "time" : "9:00 am - 6:00 pm"
//                    },
//                    {
//                        "attendanceType" : "A",
//                        "viewLabel" : "A",
//                        "date" : "4 May, 2020",
//                        "time" : ""
//                    },
//                    {
//                        "attendanceType" : "H",
//                        "viewLabel" : "H",
//                        "date" : "5 May, 2020",
//                        "time" : ""
//                    }
//                ]
//            }
//            
//## Attendance Summary April [/attendanceSummaryApril/{monthId}]
//
//### Attendance Data With Summary [GET]
//
//+ Parameter
//
//    + monthId : `4` (number)
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            {
//                "monthName" : "April",
//                "total" : 22,
//                "present" : 17,
//                "absent" : 3,
//                "holidays" : 2,
//                "data" : [
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "1 April, 2020",
//                        "time" : "9:00 am - 6:00 pm"
//                    },
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "2 April, 2020",
//                        "time" : "9:00 am - 6:00 pm"
//                    },
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "3 April, 2020",
//                        "time" : "9:00 am - 6:00 pm"
//                    },
//                    {
//                        "attendanceType" : "A",
//                        "viewLabel" : "A",
//                        "date" : "4 April, 2020",
//                        "time" : ""
//                    },
//                    {
//                        "attendanceType" : "P",
//                        "viewLabel" : "P",
//                        "date" : "5 April, 2020",
//                        "time" : ""
//                    }
//                ]
//            }
//            
//## Attendance Summary March [/attendanceSummaryJune/{monthId}]
//
//### Attendance Data With Summary [GET]
//
//+ Parameter
//
//    + monthId : `6` (number)
//
//+ Response 200 (application/json)
//
//    + Body
//            
//
//            {
//                "monthName" : "June",
//                "total" : 0,
//                "present" : 0,
//                "absent" : 0,
//                "holidays" : 0,
//                "data" : [
//                    {
//                        "attendanceType" : "",
//                        "viewLabel" : "NA",
//                        "date" : "No Data",
//                        "time" : ""
//                    }
//                ]
//            }
//            
//## Holidays [/holiday/{monthId}]
//
//### Attendance Data [GET]
//
//+ Parameter
//
//    + monthId : `4` (number)
//        
//
//+ Response 200 (application/json)
//    
//    + Body
//    
//
//            
//            {
//                "date" : 1,
//                "holidayName" : "labour Day",
//                "day" : "friday"
//            }
//
//
//
//
//        
