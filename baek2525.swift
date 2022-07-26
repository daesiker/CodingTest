import Foundation

let hm = readLine()!.split(separator: " ").map { Int(String($0))!}

let consume = Int(readLine()!)!

let minute = (hm[1] + consume) % 60

let tmpHour = (hm[1] + consume) / 60

let hour = (hm[0] + tmpHour) % 24

print("\(hour) \(minute)")