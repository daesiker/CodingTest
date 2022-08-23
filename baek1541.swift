import Foundation

let input = readLine()!.split(separator: "-")
let zero = input[0].split(separator: "+").map { Int(String($0)) ?? 0 }
var total = zero.reduce(0) { $0 + $1 }

for idx in 1..<input.count {
    let arr = input[idx].split(separator: "+").map { Int(String($0)) ?? 0 }
    total -= arr.reduce(0, {$0 + $1})
}
print(total)

