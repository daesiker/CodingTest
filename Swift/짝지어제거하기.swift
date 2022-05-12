import Foundation

func solution(_ s:String) -> Int{
    
    var tmp:[Character] = []
    
    for char in s {
        if tmp.last == char {
            tmp.removeLast()
        } else {
            tmp.append(char)
        }
    }
    
    if tmp.isEmpty {
        return 1
    } else {
        return 0
    }
    
}