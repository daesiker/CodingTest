import Foundation

func solution(_ s:String) -> String {
    
    let a = Array(s)
    
    if a.count % 2 == 0 {
        let answer = a[a.count / 2 - 1 ... a.count / 2]
        return String(answer)
    } else {
        return String(a[a.count / 2])
    }
}