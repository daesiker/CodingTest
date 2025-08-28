import Foundation

// N개의 자연수와 자연수 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오. N개의 자연수는 모두 다른 수이다.

// N개의 자연수 중에서 M개를 고른 수열
// 같은 수를 여러 번 골라도 된다.
// 고른 수열은 비내림차순이어야 한다.
// 길이가 K인 수열 A가 A1 ≤ A2 ≤ ... ≤ AK-1 ≤ AK를 만족하면, 비내림차순이라고 한다.

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var stack = [Int]()

var answer = [String]()

backTracking()
print(answer.joined(separator: "\n"))

func backTracking() {

    if stack.count == m {
        answer.append(stack.map { String($0) }.joined(separator: " "))
        return
    }

    for i in 0..<n {
        
        if let last = stack.last {
            if last <= arr[i] {
                stack.append(arr[i])
                backTracking()
                stack.removeLast()
            }
        } else {
            stack.append(arr[i])
            backTracking()
            stack.removeLast()
        }
    }

}

