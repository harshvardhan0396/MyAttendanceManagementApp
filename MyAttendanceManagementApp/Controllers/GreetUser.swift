//
//  GreetUser.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 05/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

struct DateAndWeekDay{

    func getDateAndWeekDay() -> String{
        let cufrentDateTime = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .long
        let weekDay = String(Calendar.current.component(.weekday, from: Date()))
        let dateTimeString = formatter.string(from: cufrentDateTime)
        let dayAndDateString = weekDay + " " + dateTimeString
        return dayAndDateString
    }
    
}
