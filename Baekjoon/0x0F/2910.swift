import Foundation

let nc = readLine()!.split(separator: " ").map { Int($0)! }

var arr = readLine()!.split(separator: " ").map { Int($0)! }
var dic:[Int:(Int, Int)] = [:]

for i in 0..<nc[0] {
    if let tmp = dic[arr[i]] {
        dic[arr[i]]! = (tmp.0 + 1, tmp.1)
    } else {
        dic[arr[i]] = (1, i)
    }
}

arr.sort(by: { 
    dic[$0]!.0 == dic[$1]!.0 ? dic[$0]!.1 < dic[$1]!.1 : dic[$0]!.0 > dic[$1]!.0
    })

print(arr.map {String($0) }.joined(separator: " "))