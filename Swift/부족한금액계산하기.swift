import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    
    var answer:Int64 = Int64(money)
    
    for i in 1...count {
        let num = Int64(price * i)
        answer -= num
    }
    
    if answer >= 0 {
        return 0
    }
    
    return abs(answer)
}