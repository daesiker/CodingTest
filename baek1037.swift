import Foundation

let n = Int(readLine()!)!

var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
nums.sort()
if n % 2 == 1 {

    let index = Int(floor(Double(nums.count) / Double(2)))

    print(nums[index] * nums[index])
} else {
    print(nums[0] * nums[nums.count - 1])
}
