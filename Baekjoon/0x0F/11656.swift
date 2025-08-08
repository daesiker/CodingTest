import Foundation

let str = Array(readLine()!)

var arr:[String] = []


for i in 0..<str.count {
    let tmp = Array(str[i..<str.count]).map{String($0)}.joined(separator: "")
    arr.append(tmp)
}

let answer = arr.sorted().joined(separator: "\n")
print(answer)