import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let target = nm[0]
let index = nm[1]

print(binarySearch(target))


func binarySearch(_ target: Int) -> Int {
    var start = 1
    var end = arr[index-1]
    var answer = 0
    while start <= end {
        let mid = (start + end) / 2
        var tmp = 0
        for a in arr {
            tmp += (a / mid)
        }

        if tmp >= target {
            start = mid + 1
            answer = mid
        } else {
            end = mid - 1
        }

    }

    return answer
}