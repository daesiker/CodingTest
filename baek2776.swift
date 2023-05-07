import Foundation

let T = Int(readLine()!)!


for _ in 0..<T {
    let n = Int(readLine()!)!
    let arr1 = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)
    let _ = Int(readLine()!)!
    let arr2 = readLine()!.components(separatedBy: " ").map { Int($0)! }

    for target in arr2 {

        var start = 0
        var end = n-1
        var result = -1
        while start <= end {
            let mid = (start+end)/2

            if arr1[mid] > target {
                end = mid - 1
            } else {
                result = mid
                start = mid + 1
            }

        }

        if result != -1 && arr1[result] == target {
            print(1)
        } else {
            print(0)
        }
    }

}