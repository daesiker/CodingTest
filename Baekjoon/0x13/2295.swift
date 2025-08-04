import Foundation

let n = Int(readLine()!)!

var arr = [Int]()

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    arr.append(tmp)
}

arr = arr.sorted()

var sumList:Set<Int> = []

for i in arr {
    for j in arr {
        if !sumList.contains(i + j) {
            sumList.insert(i + j)
        }
    }
}

var answer = 0

for i in arr {
    for j in arr {
        if sumList.contains(j - i) {
            answer = max(answer, j)
        }
    }
}

print(answer)