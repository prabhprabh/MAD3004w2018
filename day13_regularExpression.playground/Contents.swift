//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func matches(for regex: String, in text: String) -> [String] {
    
    do {
        let regex = try NSRegularExpression(pattern: regex)
        let results = regex.matches(in: text,
                                    range: NSRange(text.startIndex..., in: text))
        return results.map {
            String(text[Range($0.range, in: text)!])
        }
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}

//------- Number Matching Exampls -----------
let string = "🇩🇪€4€9--45;;9"
//let matched = matches(for: "[0-9]", in: string)
//let matched = matches(for: "[0-9]+", in: string)
//let matched = matches(for: ";;", in: string)
let matched = matches(for: "€[0-9]€", in: string)
print(matched) // Output: ["4", "9"]


//------- Email Matching Exampls -----------
//Define Pattern to match
let pat = "\\b([a-z])\\.([a-z]{2,})@([a-z]+)\\.ac\\.uk\\b"

//Define string from which need find the matching expression
let testStr = "x.wu@strath.ac.uk, ak123@hotmail.com     e1s59@oxford.ac.uk, ee123@cooleng.co.uk, a.khan@surrey.ac.uk"

let emailList = matches(for: pat, in: testStr)
print(emailList)


//------- Email Validation Function -----------
func isValidEmail(testStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}

if(isValidEmail(testStr: "test123@gmail.com"))
{
    print("Valid Email Address")
}
else
{
    print("Invalid Email Address")
}


if(isValidEmail(testStr: "test123gmail.com"))
{
    print("Valid Email Address")
}
else
{
    print("Invalid Email Address")
}


//------ Email Validation using String Extension --------
extension String {
    func isValidEmail() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: characters.count)) != nil
    }
}


if("test123gmail.com".isValidEmail())
{
    print("Valid Email Address (Extension)")
}
else
{
    print("Invalid Email Address (Extension)")
}

if("test123@gmail.com".isValidEmail())
{
    print("Valid Email Address (Extension)")
}
else
{
    print("Invalid Email Address (Extension)")
}
