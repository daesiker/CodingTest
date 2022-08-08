import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }

nums.sort(by: >)
print(nums[nm[1]-1])