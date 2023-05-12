import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
let money = Int(readLine()!)!


print(binarySearch())


func binarySearch() -> Int{
    var start = 1
    var end = arr.max()!

    while start <= end {

        let mid = (start+end)/2
        var count = 0
        arr.forEach { element in
            if element < mid {
                count += element
            } else {
                count += mid
            }
        }

        if count < money {
            start += 1
        } else if count > money{
            end -= 1
        } else {
            return mid
        }
    }

    return end
}