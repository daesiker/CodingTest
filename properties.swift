import Foundation

class Human {
    //저장 프로퍼티
    var name:String
    var age:Int

    init(_ name: String, _ age: Int) {
        //옵셔널이 아닌 저장프로퍼티 2개는 반드시 초기화를 해주어야한다.
        self.name = name
        self.age = age

        print("\(name) init🐽")
    }
}

class House {
    var width:Int
    var height:Int
    lazy var person:Human = Human("Daesiker", 26)

    init(_ width: Int, _ height: Int) {
        self.width = width
        self.height = height
        print("House init🏠")
    } 
}

let house:House = House(20, 20)

house.person.age += 1

class People {
    //저장 프로퍼티
    private var _name:String = ""
    //연산 프로퍼티
    var name:String {
        get {
            return self._name
        } set {
            //파라미터명을 지정하지 않으면 newValue가 바뀌는 값
            self.name = newValue
        }
    }

    private var _age:Int = 28
    var age:Int {
        get {
            return self._age
        //age가 newValue로 사용됨
        } set(age) {
            self._age = age
        }
    }

    var _address:String = "경기도"
    var address:String {
        //get만 사용할 수는 있지만 set만 사용할 수는 없다.
        get {
            return self._address
        }
    }
    
}

class Account {

    static var account:Int = 1000

    var money:Int = 0 {
        willSet {
            print("잔액 변경 예정 \(money)원 -> \(newValue)")
        }
        didSet {
            print("잔액 변경 완료 \(oldValue)원 -> \(money)")
        }
    }
}

Account.account = 2000
print(Account.account)
