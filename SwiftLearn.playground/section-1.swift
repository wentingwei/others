// Playground - noun: a place where people can play

import UIKit

// string
var str = "Hello, playground"
// int
var value = 100
// const int
let constvalue = 200
value  = constvalue

// float
let fValue:Float32 = 4
// double
let fPI          = 3.14
// string printf
let strSayHello  = "hello \(fPI)"
// array
var vColor = ["red","green","blue"]
var vRed = vColor[0]
vColor[0] = "Red"
// dictionary
var vMap = ["Sam":"136","Jone":"158"]
vMap["Sam"] = "189"
let emptyArray = [String]()
let emptyDictionary = Dictionary<String,Float>()

let array = [2,3,5,7,11,13]
var sum = 0
for i in array{
    // if i error
    if i>0 {
        sum += i
    }
}
sum

//var optionalString:String = "hello"
//optionalString == nil
//var optionalName:String = "John"
//var greeting = "Hello!"
//if let name = optionalName {
//    greeting = "Hello \(name)"
//}

func avg(numbers:Int...)->Int
{
    var vAvg:Int = 0
    var vSum:Int = 0
    var vCnt:Int = 0
    
    for number in numbers
    {
        vSum+=number
        vCnt++
    }
    
    if vCnt != 0{
        vAvg = vSum/vCnt
    }
    
    return vAvg;
}

var v = avg(1,2,3,4,5,6)
//sort([5,4,3,2,1]){$0<$1}

func repeat<ItemType>(item:ItemType,times:Int) -> [ItemType]{
    var result = [ItemType]()
    for i in 0..<times{
        result.append(item)
    }
    
    return result
}

repeat("hello", 4)

// test depth copy
var vArray = [1,2]
var vArrayCopy = vArray
vArrayCopy[0]=0
vArrayCopy          // [0,2]
vArray              // [1,2]

// tuple
let vTuple = ("hello","World")
var vStr = "Test tuple : \(vTuple.0) \(vTuple.1)"

// translate type
let vStrInt = "100"

func translate(vStr:String)->Void
{
    if let vInt = vStr.toInt()
    {
        println("translate ok int \(vInt)")
    }
    else
    {
        println("translate error")
    }
}

translate(vStrInt)


// string
//let possibleStr:String = "String"
let possibleString = "Test String"
println(possibleString)

// Character
let dog:Character = "🐶"
let cow:Character = "🐮"
let dogcow = dog + cow

let vStr1 = "hello"
let vStr2 = "hello"

func Test(vStr1:String,vStr2:String) ->Void{
    if vStr1 == vStr2
    {
        println("equ")
    }
    else
    {
        println("not equ")
    }
}

Test(vStr1, vStr2)


// iterator array
var vStringArray = ["A","B","C"]
var S = "D"
vStringArray.append(S)
vStringArray.append("E")

func TestPrintArray(vString:Array<String>) -> Void{
    for (index,value) in enumerate(vString){
        println("Item: \(index) \(value)")
    }
}

TestPrintArray(vStringArray)


// blocks
sort(&vStringArray,{
    (str1:String,str2:String) -> Bool in
    return str1>str2
    })
println(vStringArray)

sort(&vStringArray,{$0<$1})
println(vStringArray)

sort(&vStringArray,>)
println(vStringArray)

// class struct

struct Resolution
{
    var width = 0
    var height = 0
}

let someres = Resolution()
println(someres.height)

var otherres = someres
otherres.height = 800
otherres.width = 1280

otherres = Resolution(width: 1024, height: 768)

// generic
func SwapTwoValue<T>(inout a:T,inout b:T) ->Void{
    let temp = a
    a = b
    b = temp
}

var a = 10
var b = 0
swap(&a, &b)

println("a=\(a) b=\(b)")


// optional
//var integer:Int32=40
//println("\(integer)")

//<EXPR> 202 __lldb_expr_0
println("\(__FILE__) \(__LINE__) \(__FUNCTION__)")


// using c lib
puts("hello libc")

let fd = open("/tmp/test.txt", O_WRONLY|O_CREAT,0o666)
if fd < 0 {
    println("open error")
}
else
{
    let text = "hello world"
    write(fd, text, strlen(text))
    close(fd)
}

// using CGFloat
// NSLog using %@ instead of %f


// function programming
func IsEven(number:Int) -> Bool
{
    return number%2==0
}
var events = Array(1...10).filter(IsEven)
println(events)

var events2 = Array(1...10).filter{(number) in number%2==0}
println(events2)

var events3 = Array(1...10).filter{$0%2==0}
println(events3)


var url = NSURL(fileURLWithPath: "./hello")
var data = url.path




















































































