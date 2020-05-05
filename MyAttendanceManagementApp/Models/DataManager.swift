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
}


struct DataManager{
    
    var delegate: AttendnaceDataManagerDelegate?
    
    func getDataFromAPI(){
        let mockAPIURL = URL(string: "https://private-e93d27-test110028.apiary-mock.com/employee")
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: mockAPIURL! ) { (data, response, error) in
            if error != nil{
                print(error!)
            }
            if let safeData = data{
                if let empData = self.parseJSON(employeeData: safeData){
                    self.delegate?.didUpdateEmployeeData(data: empData)
                }
            }
        }
        task.resume()
    }
    
    func parseJSON(employeeData: Data) -> EmployeeData?{
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
}

