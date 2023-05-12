import Foundation
let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

print(binarySearch())
func binarySearch() -> Int {
    var start = 1
    var end = arr[n-1]

    while start <= end {

        let mid = (start+end) / 2
        var answer = 0
        arr.forEach { num in
            if num - mid > 0 {
                answer += (num-mid)
            }
        }

        if answer == m {
            return mid
        } else if answer > m {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return end
}


