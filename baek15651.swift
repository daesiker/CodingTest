import Foundation

func getSerial(numStr: String, m: Int, depth: Int = 1, num: String = "") {
    for char in numStr {
            if depth == m {
                printValue += num + "\(char)\n"
            } else {
                getSerial(numStr: numStr, m: m, depth: depth + 1, num: num + "\(char) ")
            }
        
    }
}

let inputArr = readLine()!.split(separator: " ").map {Int(String($0))! }
let n = inputArr[0]
let m = inputArr[1]
var printValue = ""
let numStr = [Int](1...n).map { String($0)}.joined()

getSerial(numStr: numStr, m: m)
print(printValue)