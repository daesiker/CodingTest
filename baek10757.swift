import Foundation

let num = readLine()!.split(separator: " ").map { UInt64(String($0))! }

print(num[0] + num[1])