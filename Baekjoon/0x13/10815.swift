import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let m = Int(readLine()!)!

let targets = readLine()!.split(separator: " ").map { Int($0)! }
var answer = [String]()

for i in 0..<m {
    if binarySearch(targets[i]) {
        answer.append("1")
    } else {
        answer.append("0")
    }
}

print(answer.joined(separator: " "))

func binarySearch(_ target: Int) -> Bool {
    var start = 0
    var end = n-1

    while start <= end {
        let mid = (start + end) / 2
        let value = arr[mid]

        if value == target {
            return true
        } else if value > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }

    return false
}