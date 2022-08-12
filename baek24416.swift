import Foundation

var fibo:[Int] = Array.init(repeating: 0, count: 41)

fibo[1] = 1
fibo[2] = 1

let n = Int(readLine()!)!

for i in 3...n {
    fibo[i] = fibo[i-1] + fibo[i-2]
}

print(fibo[n], n-2)
