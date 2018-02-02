//
//  prabh.swift
//  MADcorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee
{
    var empId: Int?
    var empName: String?
    var basicPay: Double?
    init() {
        self.empId=0
        self.empName="chahal"
        self.basicPay=2000
}
    init(Id: Int, Name: String, pay: Double){
        self.empId = Id
        self.empName = Name
        self.basicPay=pay
    }
    func display(){
        print("Employee ID : ", self.empId!)
        print("Employee Name : ", self.empName!)
        print("basic Pay : ", self.basicPay!)
        
    }
    
}
