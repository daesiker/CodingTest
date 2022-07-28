import Foundation

let n = Int(readLine()!)!

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

func gcd(_ a: Int, _ b: Int) -> Int {

    var num = b
    var div = a
    var rest = num % div

    while rest != 0 {
        num = div
        div = rest
        rest = num % div
    }

    return div
}

for i in 1..<nums.count {

    let div = gcd(nums[0], nums[i])

    print("\(nums[0] / div)/\(nums[i] / div)")


}