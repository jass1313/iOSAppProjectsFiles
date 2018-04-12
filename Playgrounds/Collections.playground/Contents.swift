//: Playground - noun: a place where people can play



var str = "Hello, playground"


var todoList:  [String] = ["buy milk", "buy iPhone", "go to gym"]


//var tempArray = Array(repeating: 3, count: 20)
var tempArray = [Any]()

todoList.append("record videos")

print(todoList)

todoList[0] = "buy ice tea"
print(todoList)

if tempArray.isEmpty {
    print("Array is empty")
}

//for item in todoList {
//    print("You have to \(item)")
//}

for (index, value) in todoList.enumerated() {
    print("Item index is: \(index) and value is \(value)")
}


// Array is done for now!

var spanishNums: [String: String] = [
    "one" : "Uno",
    "Two" : "Dos",
    "Three": "tres",
    "Four": "cuatro"
]


print(spanishNums["one"])

print("Number of elements are\(spanishNums.count)")

for (key, value) in spanishNums {
    print("\(key): \(value)")
    
}

for english in spanishNums.keys {
    print(english)
}

for Spanish in spanishNums.values {
    print(Spanish)

let english = [String](spanishNums.keys)
print(english)











