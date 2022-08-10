import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {

    let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let n = Int(readLine()!)!
    var cnt = 0

    for _ in 0..<n {

        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let startResult = getDistance(xy[0], xy[1], input[0], input[1], input[2])
        let endResult = getDistance(xy[2], xy[3], input[0], input[1], input[2])

        if startResult && !endResult {
            cnt += 1
        } else if !startResult && endResult {
            cnt += 1
        }

    }
    print(cnt)

}

func getDistance(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ r: Int) -> Bool {

    let distance = pow(Double(x1 - x2), 2) + pow(Double(y1-y2), 2)

    if distance < pow(Double(r), 2) {
        return true
    } else {
        return false
    }
}