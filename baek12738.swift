import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.components(separatedBy: " ").map { Double($0)! }

var list = [arr[0]]

arr.forEach { element in 
    if let last = list.last {
        if element > last {
            list.append(element)
        } else {
            let position = lowerBound(element)
            list[position] = element
        }
    }
}

print(list.count)
    


func lowerBound(_ key: Double) -> Int {

    var start = 0
    var end = list.count

    while end - start > 0 {
        let mid = (start + end) / 2

        if list[mid] < key {
            start = mid + 1
        } else {
            end = mid
        }
    }

    return end
}


