import Foundation

let n = Int(readLine()!)!
var answer:[String] = []

for _ in 0..<n {
    let string = String(readLine()!)
    answer.append(string)
}

func compare(_ a:String, _ b: String) -> Bool {

    if a.count == b.count {
        return a < b
    } else {
        return a.count < b.count
    }

}
answer = Array(Set(answer))
answer.sort(by: compare(_:_:))

for i in answer {
    print(i)
}