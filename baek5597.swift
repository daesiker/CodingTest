import Foundation

var arr = Array(repeating: false, count: 30)

for _ in 0..<28 {

    let n = Int(readLine()!)!

    arr[n-1] = true

}

for i in 0..<arr.count {

    if !arr[i] {
        print(i+1)
    }

}