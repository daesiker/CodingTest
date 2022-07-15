import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
var answer = 0

func bruteforce() {
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {

                let sum = nums[i] + nums[j] + nums[k]

                if sum == nm[1] {
                    answer = sum
                    return
                } else if sum < nm[1] {
                    answer = max(answer, sum)
                }

            }
        }
    }
    return
}

bruteforce()
print(answer)