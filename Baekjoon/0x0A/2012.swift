import Foundation

let n = Int(readLine()!)!

var arr:[Int] = []

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    arr.append(tmp)
}

arr = arr.sorted()

var answer = 0

for i in 0..<n {
    let grade = i + 1

    answer += abs(grade - arr[i])

}

print(answer)