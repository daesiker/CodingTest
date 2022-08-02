import Foundation

class Human {
    //저장 프로퍼티
    var name:String
    var age:Int

    init(_ name: String, _ age: Int) {
        //옵셔널이 아닌 저장프로퍼티 2개는 반드시 초기화를 해주어야한다.
        self.name = name
        self.age = age
    }
}

let human = Human("daesiker", 26)
print(human)