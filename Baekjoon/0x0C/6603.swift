import Foundation


while true {
    let input = readLine()!

    if input == "0" {
        break
    }

    let arr = input.split(separator: " ").map { Int($0)! }.dropFirst().sorted()
    
    var stack = [Int]()
    var answer = [String]()
    backTracking()

    print(answer.joined(separator: "\n"))
    print()

    func backTracking() {

        if stack.count == 6 {
            answer.append(stack.map { String($0)}.joined(separator: " "))
            return
        }

        for i in 0..<arr.count {
            if !stack.contains(arr[i]) {

                if let last = stack.last {
                    if last < arr[i] {
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
    }

}


