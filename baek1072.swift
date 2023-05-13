import Foundation

let xy = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (x,y) = (xy[0], xy[1])

print(binarySearch())
func binarySearch() -> Int {

        var start = 1, end = 1000000000
        let score = Int(floor(Float(y) / Float(x) * 100))
        var answer = end
        while start <= end {
            let mid = (start+end)/2

            let tmp = Int(floor(Float(y+mid) / Float(x+mid) * 100))

            if tmp <= score {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        return Int(floor(Float(y+end) / Float(x+end) * 100)) > score ? end : -1

}