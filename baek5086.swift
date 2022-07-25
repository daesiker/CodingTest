import Foundation


while true {
    let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

    if nm == [0, 0] { break }

    if nm[1] % nm[0] == 0 {
        print("factor")
    } else if nm[0] % nm[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}


