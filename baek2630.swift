import Foundation

let n = Int(readLine()!)!

var array:[[Int]] = []
var answer = 0
for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    array.append(tmp)
}
print(array)

func check(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ arr: [[Int]]) -> Bool {

    let value = arr[x1][y1]

    for i in x1..<x2 {
        for j in y1..<y2 {
            if arr[i][j] != value {
                return false
            }
        }
    }

    return true
}


func solution(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ arr: [[Int]]) {

    if check(x1, y1, x2, y2, arr) {
        answer += 1
        return 
    } else {
        let newX = x2 / 2
        let newY = y2 / 2
        solution(x1, y1, newX, newY, arr)
        solution(newX, newY, x2, y2, arr)
        solution(newX, y1, x2, newY, arr)
        solution(x1, newY, newX, y2, arr)

    }

}

solution(0, 0, n, n, array)
print(answer)