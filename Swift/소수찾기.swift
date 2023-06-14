import Foundation

func solution(_ numbers:String) -> Int {
    var answer = Set<Int>()
    let numbers = numbers.map { String($0) }
    for i in 1...numbers.count {
        let setNum = permu(numbers, i)
        print(setNum)
        for n in setNum {
            if n != 0 && isPrime(n) {
                answer.insert(n)
            }
        }
    }
    
    return answer.count
}

func isPrime(_ num: Int) -> Bool {
    if (num < 4) {
        return num == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) { return false }
    }
    
    return true
}

func permu(_ target: [String],_ count: Int) -> Set<Int> {
    var result = Set<Int>()
    var visited = Array(repeating: false, count: target.count)

    func permutation(_ arr: [String]) {

        if arr.count == count {
            result.insert(Int(arr.joined())!)
            return
        }

        for i in 0..<target.count {
            if visited[i] {
                continue
            } else {
                visited[i] = true
                permutation(arr + [target[i]])
                visited[i] = false

            }
        }
    }
    permutation([])
    return result
}