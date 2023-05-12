import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var arr = [Int]()

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    arr.append(tmp)
}

arr.sort(by: <)

print(binarySearch())

func router_count(_ distance: Int) -> Int {
    var count = 1
    var cur_house = arr[0]

    for i in 1..<n {
        if cur_house + distance <= arr[i] {
            count += 1
            cur_house = arr[i]
        }
    }

    return count
}

func binarySearch() -> Int {

    var start = 1, end = arr[n-1] - arr[0]
    var answer = 0
    while start <= end {
        let mid = (start+end) / 2


        if router_count(mid) >= m {
            answer = mid
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return answer
}