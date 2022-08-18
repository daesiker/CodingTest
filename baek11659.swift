import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var preSum:[Int] = []

for i in 0..<arr.count {
    if i == 0 {
        preSum.append(arr[i])
    } else {
        let value = arr[i] + preSum[i-1]
        preSum.append(value)
    }
}


for _ in 0..<nm[1] {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = input[0]-1
    let y = input[1]-1

    if x == 0 {
        print(preSum[y])
    } else if x == y{
        print(arr[x])
    } else {
        print(preSum[y] - preSum[x-1])
    }
}