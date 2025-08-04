import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }

var visited = Array(repeating: false, count: 100001)
var arr =  Array(repeating: 100001, count: 100001)
var queue:[Int] = [nk[0]]
var index = 0
arr[nk[0]] = 0
visited[nk[0]] = true

while index < queue.count {
    let x = queue[index]
    index += 1

    for i in [x-1, x+1, x*2] {
        if 0...100000 ~= i && !visited[i] {
            visited[i] = true
            arr[i] = min(arr[x] + 1, arr[i])

            if i == nk[1] {
                print(arr[i])
                break
            }
            queue.append(i)
        }
    }
}