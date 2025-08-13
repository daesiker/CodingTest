import Foundation

let data = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let (n, w, l) = (data[0], data[1], data[2])
let arr = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var q = [[Int]]() // 큐 -> [트럭 무게, 다리 진입 시간]
var index = 0 // 남아 있는 트럭 인덱스
var time = 0 // 시간
var sum = 0 // 다리 위에 있는 모든 트럭 무게

while index < n || !q.isEmpty {

    if index < n && arr[index] > l {
        index += 1
        continue
    }

    time += 1

    if !q.isEmpty && q[0][1] + w <= time {
        sum -= q.removeFirst()[0]
    }

    // 트럭이 다리 위로 진입
    if index < arr.count && sum + arr[index] <= l && q.count < w {
        q.append([arr[index], time])
        sum += arr[index]
        index += 1
    }

}


print(time)
