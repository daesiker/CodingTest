import Foundation

typealias Node = (x: Int, y: Int)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (n, m) = (input[0], input[1])

var chicken = [Node]()
var house = [Node]()

for i in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<n {
        if tmp[j] == 1 {
            house.append((i, j))
        } else if tmp[j] == 2 {
            chicken.append((i, j))
        }
    }
}

var answer = Int.max
var stack = [Node]()

func backTracking(_ start: Int) {
    if stack.count == m {
        // 도시 치킨 거리 계산
        var sum = 0
        for h in house {
            var minDist = Int.max
            for c in stack {
                minDist = min(minDist, abs(h.x - c.x) + abs(h.y - c.y))
            }
            sum += minDist
        }
        answer = min(answer, sum)
        return
    }
    
    for i in start..<chicken.count {
        stack.append(chicken[i])
        backTracking(i + 1)
        stack.removeLast()
    }
}

backTracking(0)
print(answer)