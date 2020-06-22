//
//  GreetUser.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 05/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

struct DateAndGreetings{
    
    func getDateAndWeekDay() -> String{
        let cufrentDateTime = Date()
        let formatter = DateFormatter()
        //formatter.timeStyle = .medium
        formatter.dateStyle = .long
        let weekDay = Calendar.current.component(.weekday, from: Date()) - 1
        let weekDayInString = getWeekDay(weekDay: weekDay)
        let dateTimeString = formatter.string(from: cufrentDateTime)
        let dayAndDateString = weekDayInString + ", " + dateTimeString
        return dayAndDateString
    }
    
    func getWeekDay(weekDay: Int) -> String{
        var weekDayInString = ""
        //
        //var weekday = 0
        switch weekDay {
        case 1  :
            weekDayInString = "Monday"
        case 2  :
            weekDayInString = "Tuesday"
        case 3  :
            weekDayInString = "Wednesday"
        case 4  :
            weekDayInString = "Thrusday"
        case 5  :
            weekDayInString = "Friday"
        case 6  :
            weekDayInString = "Saturday"
        default :
            weekDayInString = "Sunday"
        }
        
        return weekDayInString
    }
    
    func sendGreetings() -> String{
        let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)
        var currentTimeOfDay: String
        if hour >= 0 && hour < 12 {
            currentTimeOfDay = "Morning"
        }
        else if(hour >= 12 && hour < 17){
            currentTimeOfDay = "Afternoon"
        }
        else if(hour >= 17){
            currentTimeOfDay = "Evening"
        }
        else{
            currentTimeOfDay = ""
        }
        let greet = ("Good \(currentTimeOfDay)")
        return greet
    }
    
}



