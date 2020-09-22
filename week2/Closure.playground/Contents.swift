import UIKit
/*
{ (param) -> return type in
    statement
    .....
}
*/

//Example 1: Cho Simple Closure

//let choSimpleClosure = {
//
//}
//
//choSimpleClosure()

//Example 2 : 코드블록을 구현한 Closure

//let choSimpleClosure = {
//    print("Hello, 클로저, 코로나 하이!")
//}
//choSimpleClosure()

// Example 3: 인풋 파라미터를 받는 Closure
/*
let choSimpleClosure:(String) -> Void = { name in
    print("Hello, 클로저, 나의 이름은 \(name)입니다")
}
choSimpleClosure("김지수")
*/

// Example 4 : 값을 리턴하는 Closure
/*
 let choSimpleClosure:(String) -> String = { name in
    let message = "\(name)님 안녕하세요"
    return message
}
print(choSimpleClosure("김지수"))
*/

//Example 5: Closure를 파라미터롤 받는 함수 구현
/*
func someSipleFunction(choSimpleClousre: () -> Void) {
    print("함수에서 호출이 됬습니다.")
}
someSipleFunction(choSimpleClousre: {
    print("Hello, future iOS Developer")
})
*/

/*
func someSipleFunction(choSimpleClousre: () -> Void) {
    print("함수에서 호출이 됬습니다.")
    choSimpleClousre()
}
someSipleFunction(choSimpleClousre: {
    print("Hello, future iOS Developer")
})
 */

// Example 6: Trailing Closure

func someSipleFunction(message: String, choSimpleClousre: () -> Void) {
    print("함수에서 호출이 됬습니다. 메세지는 \(message)")
    choSimpleClousre()
}

someSipleFunction(message: "Hi,Hello", choSimpleClousre: {
                    print("future iOS Developer")
})

/*
someSipleFunction(message: "Hi,Hello"){
    print("future iOS Developer")
}
//클로저가 맨 마지막 파라미터로 있을때 저렇게 좀 생략가능 (인자 여러개있을때 간소화) -> Trailing Closure
*/
