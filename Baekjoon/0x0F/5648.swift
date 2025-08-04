import Foundation

var arr:[Int] = []

let tmp = readLine()!.split(separator: " ").map { Int($0)! }

let n = tmp[0]

for i in 1..<tmp.count {
    arr.append(tmp[i])
}

while n != arr.count {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }

    arr += tmp

}

let answer = arr.map { String($0).reversed() }.map { Int(String($0))! }.sorted().map { String($0) }.joined(separator: "\n")

print(answer)