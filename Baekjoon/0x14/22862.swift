import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = 0
var count = 0 // 삭제한 홀수 개수
var maxLength = 0 // 최장 짝수 부분 수열 길이
var evenCount = 0 // 현재 짝수의 개수

while end < n {

    // `end`를 확장하면서 짝수/홀수를 확인
    if arr[end] % 2 == 1 {
        count += 1 // 홀수를 제거할 횟수 증가
    } else {
        evenCount += 1 // 짝수 개수 증가
    }
    
    // `count`가 `k`보다 커지면 `start`를 조정
    while count > k {
        if arr[start] % 2 == 1 {
            count -= 1 // 앞쪽 홀수 제거 (슬라이딩 윈도우 축소)
        } else {
            evenCount -= 1 // 짝수 개수 감소
        }
        start += 1
    }

    print("start : \(start)")
    print("end : \(end)")

    // 현재 짝수 개수로 `maxLength` 업데이트
    maxLength = max(maxLength, evenCount)
    end += 1
}

print(maxLength)

