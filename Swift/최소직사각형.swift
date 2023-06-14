import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var x = 0
    var y = 0
    
    for size in sizes {
        var newSize = size.sorted()
        x = max(x, newSize[0])
        y = max(y, newSize[1])
    }
    
    return x*y
}