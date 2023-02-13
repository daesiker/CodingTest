import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var answer = ""
    
    for sub in s {
        answer += findValue(sub, skip, index)
    }
    
    return answer
}

func findValue(_ c: Character, _ skip:String, _ index: Int) -> String {
    
    var code = c.asciiValue!
    var arr:[String] = []
    
    while arr.count != index {
        code += 1
        code = code == 123 ? 97 : code
        let value = String(Unicode.Scalar(code))
        
        if !skip.contains(value) {
            arr.append(value)
        }
        
    }
    
    return arr[index-1]
}
