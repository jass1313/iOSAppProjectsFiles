//: Playground - noun: a place where people can play

//Usual Function
func swapInts(_ a: inout Int, _ b: inout Int) {
    let tmp = a
    a = b
    b = tmp
    var s = 3
}
var s = 4

var val1 = 2
var val2 = 3
swap(&val1, &val2)
val1
val2

//Generic Function
func swapAnything<T>(_ a: inout T, _ b: inout T) {
    let tmp = a
    a = b
    b = tmp
}
var tmp = 1111
tmp

//Int
var a = 2
var i = 3
swapAnything(&a,&i)
a
i

//String
var j = "je"
var k = "ke"
swapAnything(&j, &k)
j
k

//Double
var I = 2.2
var m = 3.3
swapAnything(&I, &m)
I
m

