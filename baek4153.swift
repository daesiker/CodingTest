import Foundation

while true {

    var xyz = readLine()!.split(separator: " ").map { Int(String($0))!}

    if xyz == [0, 0, 0] { break }

    xyz.sort()

    if pow(Double(xyz[0]), 2) + pow(Double(xyz[1]), 2) == pow(Double(xyz[2]), 2) {
        print("right")
    } else {
        print("wrong")
    }

}