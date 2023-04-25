import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var sdx = 1
    var edx = 1
    var asdx = -1
    var aedx = -1
    var ln = Int.max
    var sequence = [0] + sequence
    var prefix_sum = Array(repeating: 0, count: sequence.count)
    
    for i in 1..<sequence.count {
        prefix_sum[i] = prefix_sum[i-1] + sequence[i]
    }
    
    while sdx <= edx && edx < sequence.count {
        
        let value = prefix_sum[edx] - prefix_sum[sdx-1]
        
        if value < k {
            edx += 1
        } else if value == k {
            
            if ln > edx - sdx {
                ln = edx - sdx
                asdx = sdx
                aedx = edx
            }
            edx += 1
        } else {
            sdx += 1
        }
    }
    
    return [asdx-1, aedx-1]
}