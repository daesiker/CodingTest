import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var answer:[String] = []
    
    let my_str = my_str.map { String($0) }
    
    var tmp:String = ""
    
    for i in 0..<my_str.count {
        
        tmp += my_str[i]
        
        if (i+1) % n == 0 {
            answer.append(tmp)
            tmp = ""
        }
        
        if i == my_str.count - 1 && tmp.count != 0 {
            answer.append(tmp)
        }
        
        
    }
    
    return answer
}