import Foundation

let n = Int(readLine()!)!

var arr = Array(repeating: 0, count: 91)

arr[1] = 1
arr[2] = 1
arr[3] = 2

for i in 4...90 {
    arr[i] = arr[i-1] + arr[i-2]
}

print(arr[n])