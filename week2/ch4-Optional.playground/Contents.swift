import UIKit

var carName: String?  //있을 수도 있고 없을 수도 있고
carName = nil
//carName = "탱크"

let num = Int("10")

var favoriteMovieStar: String? = nil

// 고급 기능 4가지
// Forcd Unwrapping -> 억지로 박스 까기
//print(carName!)

////Optional binding (if let) -> 부드럽게 박스 까기 1
//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//}else {
//    print("Car Name 없다")
//}
//
//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//    }else {
//        print("Int로 컨버팅 안됨.")
//    }
//}
//printParsedInt(from: "100f")

//Optional binding (guard) -> 부드럽게 박스 까기 2
//func printParsedInt(from: String){
//    guard let parsedInt = Int(from) else{
//        print("Int로 컨버팅 안됨")
//        return
//    }
//    print(parsedInt)
//}
//Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자
//let myCarName: String = carName ?? "모델 S"

// --- 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성하고 (String?)
var favoriteFood: String? = "보쌈"
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
if let foodName = favoriteFood {
   print(foodName)
} else {
    print("좋아하는 음식이 없음")
}
// 3. 닉네임을 받아서 출력하는 함수 만들기 (조건: 입력 파라미터는 String?)
func printNickName(name: String?){
    guard let nickName = name else {
        print("닉네임 만들어 보자")
        return
    }
    print(nickName)
}
printNickName(name: "Dumba")
printNickName(name: nil)
