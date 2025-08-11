import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
var (n, m) = (nm[0], nm[1])
var dic:[String:Int] = [:]
var arr = [String]()
var answer = [String]()

// 수강신청 버튼이 활성화 된 후, 수강신청 버튼을 조금이라도 빨리 누른 학생이 대기목록에 먼저 들어간다.
// 이미 대기열에 들어가 있는 상태에서 다시 수강신청 버튼을 누를 경우 대기목록의 맨 뒤로 밀려난다.
// 잠시 후 수강신청 버튼이 비활성화 되면, 대기목록에서 가장 앞에 있는 학생부터 자동으로 수강신청이 완료되며, 수강 가능 인원이 꽉 찰 경우 나머지 대기목록은 무시하고 수강신청을 종료한다.
for _ in 0..<m {
    let tmp = readLine()!
    dic[tmp, default: 0] += 1
    arr.append(tmp)
}

for i in 0..<m {
    if dic[arr[i]]! == 1 {
        n -= 1
        answer.append(arr[i])
    }
    
    dic[arr[i]]! -= 1
    if n == 0 {
        break
    }

}

print(answer.joined(separator: "\n"))
