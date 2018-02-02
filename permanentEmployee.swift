//
//  permanentEmployee.swift
//  MADcorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class PermanentEmployee : Employee {
    var vacationWeeks : Int?
    
    //default initializer
    override init(){
        super.init()
        self.vacationWeeks = 0
        
    }
    
    //parametrized initilizer of sub clas
    init(Id: Int, Name: String, pay: Double, weeks: Int){
        super.init(Id: Id, Name: Name, pay: pay)
        self.vacationWeeks = weeks
        
    }
    
    override func display(){
        //super.display()
        print("VacationWeeks :",vacationWeeks!)
    }
}



