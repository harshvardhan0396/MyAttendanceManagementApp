//
//  DataManager.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 28/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation

protocol AttendnaceDataManagerDelegate{
    func didUpdateEmployeeData(data: EmployeeData)
    func didUpdateLeavesCount(data: LeavesCount)
}


struct DataManager{
    
    var delegate: AttendnaceDataManagerDelegate?
    var rootAPI = RootAPI()
    
    //getting employee data
    func getEmployeeData(parameter: String){
        let mockAPIURL = URL(string: rootAPI.baseURL + parameter)
        print(mockAPIURL)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: mockAPIURL! ) { (data, response, error) in
            if error != nil{
                print(error!)
            }
            if let safeData = data{
                if let empData = self.parseJSONForEmployee(employeeData: safeData){
                    self.delegate?.didUpdateEmployeeData(data: empData)
                }
            }
        }
        task.resume()
    }
    
    func parseJSONForEmployee(employeeData: Data) -> EmployeeData?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(EmployeeData.self, from: employeeData)
            //print(decodedData.employeeName)
            return decodedData
        }
        catch{
            print(error)
            return nil
        }
    }
    
    //getting leaves data
    func getLeaveeData(parameter: String){
        let mockAPIURL = URL(string: rootAPI.baseURL + parameter)
        print(mockAPIURL)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: mockAPIURL! ) { (data, response, error) in
            if error != nil{
                print(error!)
            }
            if let safeData = data{
                if let leavesCount = self.parseJSONForLeave(data: safeData){
                    self.delegate?.didUpdateLeavesCount(data: leavesCount)
                }
            }
        }
        task.resume()
    }
    
    func parseJSONForLeave(data: Data) -> LeavesCount?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(LeavesCount.self, from: data)
            //print(decodedData.employeeName)
            return decodedData
        }
        catch{
            print(error)
            return nil
        }
    }
}

