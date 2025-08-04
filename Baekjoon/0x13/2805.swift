import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

let n = nm[0]
let c = nm[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var answer = 0

binarySearch()

print(answer)

func binarySearch() {
    var left = 1
    var right = arr[n-1]

    while left <= right {
        let mid = (left + right) / 2
        var tmp = 0
        for tree in arr {
            let value = tree - mid

            if value > 0 { tmp += value }
        }

        if tmp >= c {
            left = mid + 1
            answer = max(answer, mid)
        } else {
            right = mid - 1
        }


    }


}