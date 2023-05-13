import Foundation 

func lowerBound(find: Int, numbers: [Int]) -> Int {

    var start = 0, end = numbers.count-1

    while start < end {
        let mid = (start+end)/2

        if numbers[mid] < find {
            start = mid + 1
        } else {
            end = mid
        }
    }
    return end
}

