//
//  enum.swift
//  day10_feb9
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



enum limitIncreaseError: Error {
    case insufficientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
}
 

struct requestsFromAccount {
    var type : String
    var balance : Double
    var reqStatus :String
}
