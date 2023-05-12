import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

let m = Int(readLine()!)!

let arr2 = readLine()!.components(separatedBy: " ").map { Int($0)! }

for num in arr2 {
    print(binarySearch(num))
}




func binarySearch(_ num:Int) -> Int {

    var start = 0
    var end = n-1

    while start <= end {

        let mid = (start + end) / 2

        if arr[mid] < num {
            start = mid + 1
        } else if arr[mid] > num {
            end = mid - 1
        } else {
            return 1
        }

    }

    return 0
}

