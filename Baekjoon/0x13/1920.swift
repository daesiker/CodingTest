import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let m = Int(readLine()!)!

let targets = readLine()!.split(separator: " ").map { Int($0)! }

var answer = ""

for i in 0..<m {
    let target = targets[i]

    if binarySearch(target) {
        answer += "1\n"
    } else {
        answer += "0\n"
    }
}

print(answer)

func binarySearch(_ target: Int) -> Bool {
    var left = 0
    var right = n-1

    while left <= right {
        let mid = (left + right) / 2
        let value = arr[mid]

        if value == target {
            return true
        } else if value < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }



    return false
}

