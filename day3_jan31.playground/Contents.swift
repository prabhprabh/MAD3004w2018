//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//dictonaries
var namesOfIntegers = [Int: String]() //names of integers is empty[int:string] dictonary
namesOfIntegers[16] = "sixteen" //nmae of int contains 1 key value pair
print("namesOfIntegers : \(namesOfIntegers)")

namesOfIntegers[28] = "twenty eight"
print("dictonarycontains : \(namesOfIntegers.count)elements")
print("dictonary : ",namesOfIntegers)

namesOfIntegers = [:] // nameofint is again empty
print("dictonarycontains : \(namesOfIntegers.count)elements")
print("namesOfIntegers : \(namesOfIntegers)")

if namesOfIntegers.isEmpty
{
    print("dictonary is empty")
    
}
else{
    print(namesOfIntegers)
}



var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports : \(airports)")
print("The airports dictionary contains \(airports.count) items.") //prints The airports dictionary contains 2 items


airports["LHR"] = "London Heathrow"  // the value for "LHR" has been changed to "London Heathrow"
airports["XYZ"] = "TP international"
airports["AND"] = "SVP internations"
print ("airpoerts : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")
print("the old value for DUB was \(oldValue)")
//

if let airportName = airports["AND"] {
    print("The name of the airport is \(airportName).")}  // Prints "The name of the airport is SVP internations"
else{
     print("That airport is not in the airports dictionary.")
}



airports["mars"] = "range rover" // "range rover" is not the real airport for mars, so delete it
print(airports)
airports["mars"] = nil //to remove a value
print(airports)


if let removedValue = airports.removeValue(forKey: "DUB")
{
    print("The removed airport's name is \(removedValue).")
} else
{
    print("The airports dictionary does not contain a value for DUB.")// Prints "The removed airport's name is Dublin Airport"
    
}

for (airportCode, airportName) in airports
{
    print(airportCode, airportName)
}


for airportCode in airports.keys
{
    print("airport code : (airportcode)")
}

//to print airportcode
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

//to print airportnames
for airportName in airports.values {
    print("Airport name: \(airportName)")
}


//<key,value> pairs
var d1 : Dictionary<String, String>  = ["india":"hindi","canada":"english"] //alternate to declare dictonary
print(d1)
print(d1.description)
print(d1["india"]!)
print(d1["canada"]!)
//print(d1["usa"]!)
d1["china"] = "french"
for (k,v) in d1{
    print("\(k) -> \(v)")}

var d2 = ["india":"hindi","canada":"english"]
for(k,v) in d2{
    print("\(k) -> \(v)")
}

//dictionary with any value type
var d3 = [String: AnyObject]()
d3["firstname"] = "prabh" as AnyObject
d3["lastname"] = "chahal" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3",d3)

//getting as a key, value pair
    for (k,v) in d3{
    print("\(k) -> \(v)")}


//declaring tuples
var x = (10, 20, "chahal")
print(x,0)
print(x,1)
print(x,2)

let http404Error = (404, "not found")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("statusCode",statusCode)
print("statusMessage",statusMessage)

let (codeOnly, _) = http404Error
print("codeOnly",codeOnly)

let errorDescription = (Code: 404, Message: "not found")
print(errorDescription.Code, errorDescription.Message)

//working with functions

//simple declaration
func add()
{
    print("I am in User Defined Function")
}
add()

func add(n1:Int, n2:Int)
{
    var sum : Int
    sum = n1 + n2
    print ("sum : ",sum)
}

add(n1:10, n2:20) // always specify name with value
//add(10,20) it will show erroe..name needs to be mentioned
//add(n2:20, n1:10) n1 should be writtrn first

//single parameter
func welcome(name:String)
{
print("hello, \(name)")
}
welcome(name: "prabh chahal")


//making parameter label optional
func sub (a:Int, _ b:Int)
{
    let c = a - b
    print("sub : \(c)")
}
sub (a: 5,8)

//single return type
func mul(a:Int, b:Int) ->Int
{
    let c = a * b
    return c
}
var c = mul(a:5, b:2)
print("mul : \(c)")


//multi return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int, Int)
{
    //funaction parameters are constants by default
    //var temp = a
    //a=b
    //b=temp
    return(b,a)
}

//swapping the values
var (a,b) = swipe(number1: 10, b:20)
print("a: \(a), b: \(b)")
(_ , c) = swipe(number1: 10, b:20)
print("c : \(c)")


//input concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}


var x = 8.0, y = 9.0
swipe( aa:&x ,bb:&y)
//swipe(aa: &10, bb: &12.4)
print("x : \(x), y: \(y)")

//default parameter
func simpleInterest(amount:Double, noOfyears: Double, rate: Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}
print("simpleInterest: \(simpleInterest(amount: 100, noOfYears: 5))")
print("simpleInterest: \(simpleInterest(amount: 100, noOfYears: 5, rate: 7))")



//variadic parameters
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n:10,20,30)



//passing array as parameter
func display(numberValues:Int, parameter:[Int]...)
{
print("number of values \(numberValues)")
    for i in  parameters{
        print("i: \(i)")
}
}
var arr = [1,2,3,4,5,6,7]
display(numberValues: 3, parameters: arr, arr, arr)


//adding arrays
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count{
        for i in 0..<array2.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)
print(a1)
print(a2)
print(a3)
