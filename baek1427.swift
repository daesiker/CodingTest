import Foundation

var nums = readLine()!.map { String($0) }

nums.sort(by: >)
let answer = nums.joined(separator: "")
print(answer)