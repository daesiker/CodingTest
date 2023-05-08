import Foundation

var second = Int(readLine()!)!

if second % 10 == 0 {
    var answer = ""
    var div = second / 300
    answer += "\(div) "
    second = second % 300
    div = second / 60
    answer += "\(div) "
    second = second % 60
    div = second / 10
    answer += "\(div)"
    print(answer)



} else {
    print(-1)
}