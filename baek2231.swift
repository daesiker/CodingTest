import Foundation

let num = Int(readLine()!)!
var answer = 0

func bruteforce() {

    for i in 1...num {

        var sum = i

        for str in String(i) {
            sum += Int(String(str))!
        }

        if sum == num {
            answer = i
            return
        }

    }
}

bruteforce()
print(answer)