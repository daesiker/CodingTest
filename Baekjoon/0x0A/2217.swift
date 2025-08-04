import Foundation 

let N = Int(readLine()!)!

var arr:[Int] = []

for _ in 0..<N {
    let tmp = Int(readLine()!)!
    arr.append(tmp)
}

arr = arr.sorted { $1 < $0 }

var answer = 0

for i in 0..<arr.count {

    answer = max(answer, arr[i] * (i+1))

}

print(answer)