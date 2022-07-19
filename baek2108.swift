import Foundation

let n = Int(readLine()!)!
var array:[Int] = []
var sum:Int = 0
var dict:[Int:Int] = [:]

for _ in 0..<n {
    let num = Int(readLine()!)!
    sum += num
    array.append(num)
    dict[num, default: 0] += 1
}

let average = (Double(sum) / Double(n))
array.sort()
let maxValue = dict.max(by: { $0.value < $1.value })!.value
var mode = dict.filter({ $0.value == maxValue }).keys.sorted()


print(Int(round(average)))
print(array[n / 2])

if mode.count > 1 {
    print(mode[1])
}else {
    print(mode[0])
}

print(array[array.count - 1] - array[0])

