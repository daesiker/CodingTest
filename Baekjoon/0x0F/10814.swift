import Foundation

let n = Int(readLine()!)!

typealias Node = (index: Int, value: String)

var arr:[Node] = []

for i in 0..<n {
    let tmp = readLine()!
    arr.append((i, tmp))
}

let answer = arr.sorted(by: { sortArray($0, $1)}).map { $0.value}.joined(separator: "\n")

print(answer)

func sortArray(_ s1: Node, _ s2: Node) -> Bool {
    let s1_value = Int(s1.value.split(separator: " ")[0])!
    let s2_value = Int(s2.value.split(separator: " ")[0])!

    if s1_value == s2_value {
        return s1.index < s2.index
    } else {
        return s1_value < s2_value
    }

}