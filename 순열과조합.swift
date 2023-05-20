import Foundation

func permu(_ target: [Int], num: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = Array(repeating: false, count: target.count)

    func permutation(_ arr: [Int]) {

        if arr.count == num {
            result.append(arr)
            return
        }

        for i in 0..<target.count {
            if visited[i] {
                continue
            } else {
                visited[i] = true
                permutation(arr+ [target[i]])
                visited[i] = false

            }
        }
    }
    permutaion([])
    return result
}

func combi(_ arr:[Int], target: Int) -> [[Int]] {
    var result = [[Int]]()

    func combination(_ index: Int, now: [Int]) {
        if now.count == target {
            result.append(now)
            return
        }

        for i in index..<arr.count {
            combination(index+1, now + [arr[i]])
        }
    }

    return result
}