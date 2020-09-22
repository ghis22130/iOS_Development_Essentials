import UIKit

//var multiplyClosure:(Int, Int) -> Int { (a: Int, b:Int) -> Int .IntegerLiteralType
//    return a * b
//}

//var multyplyClousre:(Int, Int) -> Int { a, b in
//    return a * b
//}

var multiplyClosure:(Int, Int) -> Int = {$0 * $1}

let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClousure: (Int, Int) -> Int = { a,b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClousure)

operateTwoNum(a: 4, b: 2) {a, b in
    return a / b
}

let voidClosure: () -> Void = {
    print("iOS  Developer")
}

voidClosure()

// --> Capturing Value
var count  = 0
let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

//Completion Block
//Higher Order Functions 인자를 함수로 받을수 있는 함수
