//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

print("JSON Example")



class Tutorial: Codable
{
    let title: String
    let author : String
    
    let editor: String
    let type: String
    let publishDate: Date
    
    init(title: String, author: String, editor: String, type: String, publishDate: Date)
    
    {
        self.title = title
        self.author = author
        self.editor = editor
        self.type = type
        self.publishDate = publishDate
    }
}



let tutorial = Tutorial(title: "whats new in swift 4?", author: "cosmin", editor: "simon ng", type: "swift", publishDate: Date())


let encode = JSONEncoder()
let data = try encode.encode(tutorial)
let jsonString = String(data: data, encoding: .utf8)

print(jsonString ?? "")
let decoder = JSONDecoder()
let article = try decoder.decode(Tutorial.self, from: data)
let info = ("\(article.title) \(article.author) \(article.editor) \(article.type) \(article.publishDate)")

print(info)
