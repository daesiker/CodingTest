import Foundation

let T = Int(readLine()!)!

func lowerBound(_ arr:[Int], _ target: Int) -> Int {
    var left = 0
    var right = arr.count

    while left < right {
        let mid = (left + right) / 2
        let value = arr[mid]

        if value < target {
            left = mid + 1
        } else {
            right = mid
        }
    }

    return left
}

for _ in 0..<T {
    let _ = readLine()!.split(separator: " ").map { Int($0)! }

    let arr1 = readLine()!.split(separator: " ").map { Int($0)! }
    let arr2 = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

    var answer = 0

    for a in arr1 {
        answer += lowerBound(arr2, a)
    }

    print(answer)

}