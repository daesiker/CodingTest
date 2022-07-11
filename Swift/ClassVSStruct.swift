import Foundation

class Human {
    var age:Int
    var name:String

    init(_ age: Int, _ name: String) {
        self.age = age
        self.name = name
        print("\(name) init")
    }

    deinit {
        print("\(name) deinit")
    }

}

var human1:Human? = Human(28, "Daesik") // ARC : 1
print(human1)
var human2 = human1 // ARC : 2

human1 = nil //ARC : 1
human2 = nil //ARC : 0
