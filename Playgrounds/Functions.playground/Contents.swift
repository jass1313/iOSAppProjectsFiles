//: Playground - noun: a place where people can play




func taxations(){
   //taxation system
    print("this is line one")
    print("this is line 2")
    print("this is line 3")
}

taxations()
taxations()
taxations()

func sayHello(name: String) -> String{
    let hello = "Hello to " + name + "!"
    return hello
}

//sayHello(name: "John")
print(sayHello(name: "John"))
print(sayHello(name: "Angel"))
print(sayHello(name: "Ram"))


func justHello() -> String {
    let hellome = "hello there"
    return hellome
}

print(justHello())

func findMinMax(myArray: [Int]) -> (min: Int, max: Int )  {

 var myMin = myArray[0]
 var myMax = myArray[0]

    for value in myArray[1..<myArray.count] {
        if value < myMin {
            myMin = value
        } else if value > myMax {
                myMax = value
            }
        }
        return (myMin, myMax)
    
}



let something = findMinMax(myArray: [3, 2, 6, 10, 1, -1, -2])

print("Minimum is: \(something.min)")
print("Maximum is: \(something.max)")


func anthorHello(_ name: String, from countryYourAreFrom: String) -> String {
    return "Hello to \(name) ! So you are from \(countryYourAreFrom)."
    
}
print(anthorHello("John", from: "India"))


// Variadic function

func myMean(_ num: Int...) -> Int{
    var total: Int = 0
    
    for n in num{
        total += n
    }
    
    return total/Int(num.count)
}

print(myMean(2,3,4,5))
print(myMean(12,3,104,5, 3, 2, 4, 6))






































