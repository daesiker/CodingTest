import Foundation

let string = readLine()!.map{ Int($0.asciiValue! - 97) }
let N = Int(readLine()!)!

var preSum = Array.init(repeating: Array.init(repeating: 0, count: 26), count: string.count)

preSum[0][string[0]] = 1

for i in 1..<string.count {
    preSum[i][string[i]] = 1

    for j in 0..<26 {
        preSum[i][j] += preSum[i-1][j]
    }
}

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    let num = Int(input[0].first!.asciiValue! - 97)


    let x = Int(input[1])!
    let y = Int(input[2])!

    if x > 0 {
        let value = preSum[y][num] - preSum[x-1][num]
        print(value)
    } else {
        print(preSum[y][num])
    }

    
}



