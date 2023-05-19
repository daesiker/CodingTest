import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    
    var start = Int64(1), end = Int64(times[times.count-1] * n)
    
    while start < end {
        let mid = (start + end) / 2
        var total:Int64 = 0
        for time in times {
            total += mid/Int64(time)
        }
        
        if total >= n {
            end = mid
        } else {
            start = mid + 1
        }
        
    }
    
    return start
}