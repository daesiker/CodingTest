import Foundation

var dp = [[[Int]]]()

for _ in 0..<21 {
    var tmpArray = [[Int]]()
    for _ in 0..<21 {
        let tmp = Array.init(repeating: 0, count: 21)
        tmpArray.append(tmp)
    }
    dp.append(tmpArray)
    
}

while true {
    let num = readLine()!.split(separator: " ").map { Int(String($0))! }

    if num == [-1, -1, -1] {
        break
    }

    let value = w(num[0], num[1], num[2])
    print("w(\(num[0]), \(num[1]), \(num[2])) = \(value)")
}



func w(_ a: Int, _ b: Int, _ c: Int) -> Int {

    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }

    if a > 20 || b > 20 || c > 20 {
        return w(20, 20, 20)
    }

    if dp[a][b][c] != 0 {
        return dp[a][b][c]
    }

    if a < b && b < c {
        dp[a][b][c] =  w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
        return dp[a][b][c]
    }

    dp[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)

    return dp[a][b][c]

}