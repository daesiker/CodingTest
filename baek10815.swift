import Foundation

let n = Int(readLine()!)!

var cards = readLine()!.split(separator: " ").map { Int(String($0))! }
cards.sort()

let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer:[String] = []

func binarySearch(_ array: [Int], target: Int) -> String {
    var start = 0
    var end = array.count - 1

    while start <= end {
        let mid = (start + end) / 2

        if array[mid] == target {
            return "1"
        } else if array[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }

    }

    return "0"
}


for target in targets {
    answer.append(binarySearch(cards, target: target))
}

let output = answer.joined(separator: " ")
print(output)