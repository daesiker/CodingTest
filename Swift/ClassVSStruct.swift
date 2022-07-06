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
print(human1)
var human2 = human1

human1 = nil
human2 = nil

// struct Human {
//     var age:Int
//     var name:String

//     init(_ age: Int, _ name: String) {
//         self.age = age
//         self.name = name
//         print("\(self.name) init")
//     }

// }

// var human1:Human? = Human(28, "Daesik")
// var human2 = human1

// human2?.age = 29

// print(human1!.age)
// print(human2!.age)