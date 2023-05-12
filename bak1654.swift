import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let arr:[Int] = {
    var tmp = [Int]()
    for _ in 0..<n {
        let num = Int(readLine()!)!
        tmp.append(num)
    }

    return tmp
}()


print(binarySearch())

func binarySearch() -> Int {

    var start = 1
    var end = arr.max()!

    while start <= end {

        let mid = (start+end) / 2
        var count = 0
        arr.forEach { num in 
            count += (num / mid)
        }

        if count < m {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }

    return end
}

