// 자연수 N과 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오.

// 1부터 N까지 자연수 중에서 중복 없이 M개를 고른 수열
// 고른 수열은 오름차순이어야 한다.
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var stack = [Int]()

backTracking()

func backTracking(_ start: Int = 1) {

    if stack.count == m {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }

    for i in start...n {
        if !stack.contains(i) {
            stack.append(i)
            backTracking(i)
            stack.removeLast()
        }

    }

}