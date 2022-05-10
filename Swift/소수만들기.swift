import Foundation

//제일 깔끔한 소수판별 함수
func isPrime(_ num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    for i in 0..<nums.count - 2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                let num = nums[i] + nums[j] + nums[k]
                if isPrime(num) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}