import Foundation

let N = Int(readLine()!)!

var result = Array(repeating: 1, count: N)

for i in 0..<N {

    let n = Int(readLine()!)!
    var wear:[String:Int] = [:]

    for _ in 0..<n {
        let read = readLine()!.split(separator: " ").map { String($0) }

        if wear[read[1]] == nil {
            wear[read[1]] = 1
        } else {
            wear[read[1]]! += 1
        }

    }

    for wear in wear {
        result[i] *= (wear.value + 1)
    }

    result[i] -= 1

}

for result in result {
    print(result)
}