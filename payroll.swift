//
//  payroll.swift
//  MADcorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class payroll : PermanentEmployee {
    var netPay : Double?
   
    
    override init()
    {
        super.init()
        self.netPay = 0
        
    }
    
    override init(Id: Int, Name: String, pay: Double, weeks: Int)
    {
        super.init(Id: Id, Name: Name, pay: pay,  weeks: weeks)
        self.netPay = 0
    }
    
    
    override func display() {
        super.display()
        self.calculate()
        print("netPay :", self.netPay!)
        
    }
    
    func calculate() {
        var vw = self.vacationWeeks!
        if vw > 5 {
            self.netPay! = self.basicPay! - 100
        }
        else{
            self.netPay! = self.basicPay!
        }
    }
    
}
