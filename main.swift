//
//  main.swift
//  MADcorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


var emp1 = Employee()
emp1.empId = 101
emp1.empName = "Prabh"
emp1.basicPay = 5000
emp1.display()




var obj2 = PermanentEmployee()
//obj2.display()
obj2.empId = 102
obj2.empName = "prabh"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
obj2.display()


var obj5 = PermanentEmployee()
obj5.display()


var obj6 = PermanentEmployee(Id: 111, Name: "prab", pay: 2001,  weeks: 3)
obj6.display()




var obj7 = payroll(Id: 111, Name: "prab", pay: 2001,  weeks: 3)
obj7.display()
