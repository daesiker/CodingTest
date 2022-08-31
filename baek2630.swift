import Foundation

let n = Int(readLine()!)!

var array:[[Int]] = []
var answer = 0
for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    array.append(tmp)
}

func check(_ arr: [[Int]]) -> Bool {

    let value = arr[0][0]

    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if arr[i][j] != value {
                return false
            }
        }
    }

    return true
}


func solution(_ arr: [[Int]]) {

    if check(array) {
        answer += 1
        return 
    } else {
        let n = arr.count / 2
        let tmp1 = arr[0..<n][0..<n]
        print(tmp1)
    }

}
solution(array)