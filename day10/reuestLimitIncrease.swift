//
//  reuestLimitIncrease.swift
//  day10_feb9
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class requestLimitIncrease{
var requestsReceived = [
    "s1100" : requestsFromAccount(type: "Saving", balance: 1234.09,reqStatus : "In Process"),
    "s1200" : requestsFromAccount(type: "Saving", balance: 9080.90,reqStatus : "In Process"),
    "s1300" : requestsFromAccount(type: "chequing", balance: 10000, reqStatus : "In Process"),
    "s1400" : requestsFromAccount(type: "Saving", balance: 5400,reqStatus : "Approved")
    ]
    func testEligibility(accountNo acno : String) throws {
      
    }
    func incraeseLimit (accountNo acno: String) throws {
        guard let reqAcc = requestsReceived[acno] else{
            throw limitIncreaseError.ineligible
        }
        guard reqAcc.type == "Saving" else{
            throw limitIncreaseError.noSavingAccount
        }
        
        guard reqAcc.balance >= 5000 else{
            throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000 - reqAcc.balance )
        }
        
        
        var approvedRequest = reqAcc
        approvedRequest.reqStatus = "approved"
        print("your request is approved")
        
    }
    
    

func actype (accountNo acno : String) throws {
    guard reqAcc.reqStatus == "In Process" else{
        throw limitIncreaseError.ineligible
        }
    }
}
