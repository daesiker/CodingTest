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

var human1:Human? = Human(28, "Daesik")
var human2 = human1
human2?.age = 27

print(human1?.age ?? 0)
print(human2?.age ?? 0)

human1 = nil
human2 = nil