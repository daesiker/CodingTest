import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var arr = Array(1...nm[0])

let targets = readLine()!.split(separator: " ").map { Int($0)! }

var answer = 0

for i in 0..<nm[1] {

    while (true) {
        if arr[0] == targets[i] {
            arr.removeFirst()
            break
        }

        if let index = arr.firstIndex(of: targets[i]) {
            if index < arr.count / 2 {
                arr.append(arr.removeFirst())
            } else {
                arr.insert(arr.removeLast(), at: 0)
            }
            answer += 1
        }
    }
}

print(answer)