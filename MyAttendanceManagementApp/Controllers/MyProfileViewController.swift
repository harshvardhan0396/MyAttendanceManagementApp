//
//  TestButtonViewController.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 11/05/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit
class MyProfileViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var designation: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var bloodGroup: UILabel!
    @IBOutlet weak var city: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.cornerRadius = image.frame.size.width/2
        self.employeeProfileData()
    }
}

extension MyProfileViewController{

    func employeeProfileData(){
        //let employeeLoader = self.startLoader()
        GetData.getEmployeeData(requestUrl: URL(string: RootAPI.employeeData)!, resultType: EmployeeData.self){(employeeProfileResponse) in
            //self.stopLoader(loader: employeeLoader)
            DispatchQueue.main.async{
                self.image.image = UIImage(named: employeeProfileResponse.image)!
                self.name.text = employeeProfileResponse.employeeName
                self.designation.text = employeeProfileResponse.post
                self.id.text = String(employeeProfileResponse.id)
                self.number.text = String(employeeProfileResponse.number)
                self.email.text = employeeProfileResponse.email
                self.bloodGroup.text = employeeProfileResponse.bloodGroup
                self.city.text = employeeProfileResponse.city
                
            }
        }
    }
}
