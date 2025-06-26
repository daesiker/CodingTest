import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {

    var arr:[[Int]] = []
    
    var tmp:[Int] = []
    var isReverse = false
    for i in 1...n {

        tmp.append(i)

        if i % w == 0 {
            if isReverse {
                arr.append(tmp.reversed())
            } else {
                arr.append(tmp)
            }
            isReverse.toggle()
            tmp = []
        }
    }


    if !tmp.isEmpty {
        let count = w - tmp.count
        let remains = Array(repeating: -1, count: count)
        tmp += remains
        if isReverse {
            arr.append(tmp.reversed())
        } else {
            arr.append(tmp)
        }
    }

    var answer = 0
    var target = 0
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if arr[i][j] == num {
                answer = i+1
                target = j
            }
        }
    }

    for i in 0..<arr.count {
        if arr[i][traget] == -1 {
            answer -= 1
        }
    }


    return answer
}

print(solution(22, 6, 8, 3))