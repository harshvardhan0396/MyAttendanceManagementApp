//
//  DataManager.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 28/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import Foundation

class GetData{

    static func getEmployeeData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler: @escaping(_ result: T) -> Void){
        URLSession.shared.dataTask(with: requestUrl) { (data, response, error) in

            if(error == nil && data != nil && data?.count != 0){
                let decoder = JSONDecoder()
                do{
                    let result = try decoder.decode(T.self, from: data!)
                    _ = completionHandler(result)
                }
                catch let error{
                    print(error)
                }
            }
            else{
                completionHandler(error as! T)
            }
        }.resume()
    }
}
