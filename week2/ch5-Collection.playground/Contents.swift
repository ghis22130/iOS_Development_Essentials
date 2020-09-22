import UIKit

var evenNumbers: [Int] = []
let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

//let isEmpty = evenNumbers.isEmpty
evenNumbers.count

print(evenNumbers.first!)

let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first {
    print("--> first item is :\(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

evenNumbers[1]

let firstThree = evenNumbers[0...2]
evenNumbers.contains(3)
evenNumbers.contains(10)

evenNumbers.insert(4, at: 0)
//evenNumbers.removeAll() // == evenNumbers = []
evenNumbers.remove(at: 0)

evenNumbers[0] = -2

evenNumbers[0...2] = [-2, 0, 2]

//evenNumbers.swapAt(0, 1)

//for num in evenNumbers {
//    print(num)
//}

for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value: \(num)")
}

evenNumbers.dropFirst(3)    //앞에 3개 털고 보여주기 실제 배열엔 영향X

evenNumbers.prefix(3)

evenNumbers.suffix(3)

// ---> Dictionary

var scoreDic: [String: Int] = ["Jason":80, "Jay":95, "Jake": 90]
//var scoreDic: Dictionary<String, Int> = ["Jason":80, "Jay":95, "Jake": 90]

if let score = scoreDic["Jason"]{
    score
} else {
    //.. score 없음
}
scoreDic["Jay"]
scoreDic["Jacob"]

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

scoreDic["Jason"] = 90
scoreDic["Jacob"] = 100
scoreDic

scoreDic["Jacob"] = nil
scoreDic

// For Loop
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

// 1.이름, 직업, 도시 에대해서 본인의 딕셔너리 만들기
var myDic: [String: String] = ["name":"JiSoo", "job":"iOS Engineer","city":"Goyang"]
// 2.여기서 도시를 부산으로 업데이트 하기
myDic["city"] = "Busan"
// 3. 딕셔너리를 받아서 이름과 도시 프린트 하는 함수 만들기
func printNameandCity(dic:[String:String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("--> Cannot find")
    }
}
printNameandCity(dic: myDic)

// --> Set
var someSet : Set<Int> = [1,2,3,1]

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet.remove(1)
someSet

