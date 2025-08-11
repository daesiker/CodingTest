import Foundation

let n = Int(readLine()!)!
var arr:[[String]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { String($0) }
    arr.append(tmp)
}

let answer = arr.sorted(by: {sortScore($0, $1)}).map { $0[0] }.joined(separator: "\n")

print(answer)


// 국어 점수가 감소하는 순서로
// 국어 점수가 같으면 영어 점수가 증가하는 순서로
// 국어 점수와 영어 점수가 같으면 수학 점수가 감소하는 순서로
// 모든 점수가 같으면 이름이 사전 순으로 증가하는 순서로 (단, 아스키 코드에서 대문자는 소문자보다 작으므로 사전순으로 앞에 온다.)
func sortScore(_ s1: [String], _ s2: [String]) -> Bool {

    let s1_kor = Int(s1[1])!
    let s2_kor = Int(s2[1])!
    let s1_eng = Int(s1[2])!
    let s2_eng = Int(s2[2])!
    let s1_math = Int(s1[3])!
    let s2_math = Int(s2[3])!
    
    if s1_kor != s2_kor {
        return s1_kor > s2_kor
    } else if s1_eng != s2_eng {
        return s1_eng < s2_eng
    } else if s1_math != s2_math {
        return s1_math > s2_math
    } else {
        return s1[0] < s2[0]
    }
}