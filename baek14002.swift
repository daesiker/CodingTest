import Foundation 

func lowerBound(_ find: Int,_ numbers: [Int]) -> Int {

    var start = 0, end = numbers.count-1

    while start < end {
        let mid = (start+end)/2

        if numbers[mid] < find {
            start = mid + 1
        } else {
            end = mid
        }
    }
    return end
}

let n = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

var dp = [Int]()

for num in arr {

    if dp.isEmpty {
        dp.append(num)
        continue
    }

    if dp[dp.count-1] < num {
        dp.append(num)
    } else {
        let index = lowerBound(num, dp)
        dp[index] = num
    }

}

print(dp.count)
print(dp.map { String($0)}.joined(separator: " "))