import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
let arr = readLine()!.split(separator: " ").map { Int($0)! }

let arr2 = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var answer = [Int]()

for i in 0..<n {
    let target = arr[i]
    if binarySearch(target) {
        answer.append(target)
    }

}

print(answer.count)

print(answer.sorted().map { String($0) }.joined( separator: " "))


func binarySearch(_ target: Int) -> Bool {
    var start = 0
    var end = m-1

    while start <= end {
        let mid = (start + end) / 2
        let value = arr2[mid]

        if value == target {
            return false
        } else if value < target {
            start = mid + 1
        } else {
            end = mid - 1
    
    }

    
}
return true
}