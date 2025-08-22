import Foundation

// 자연수 N과 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오.
// 1부터 N까지 자연수 중에서 M개를 고른 수열
// 같은 수를 여러 번 골라도 된다.

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])


var stack = [Int]()


backTracking()

func backTracking() {

    if stack.count == m {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }

    for i in 1...n {
        stack.append(i)
        backTracking()
        stack.removeLast()
    }

}