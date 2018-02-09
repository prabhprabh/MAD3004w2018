//
//  main.swift
//  day10_feb9
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//


//error handling

import Foundation

print("Hello, World!")

//throw limitIncreaseError.ineligible


//var obj1 = requestLimitIncrease()
//try obj1.incraeseLimit(accountNo: "S1100")


var limitRequest = requestLimitIncrease()

do{
    try limitRequest.actype(accountNo: "S1400")
}
catch is requestLimitIncrease {
    print("Something wrong with your Account")
}


/*var processRequest = requestLimitIncrease()
 do{
    try processRequest.increaseLimit(accountNo: "S1400")
}
catch is limitIncreaseError {
    print("Something wrong with your Account")
}
    limitIncreaseError.insufficientBalance {
    print("You dont have Sufficient Balance")
    
}
catch limitIncreaseError.ineligible {
    print("You dont have Account with Us")
}
catch limitIncreaseError.noSavingAccount {
    print("Limit increase is only for Savings Account")
}
catch {
    print("Unexpected Error")
}
*/
