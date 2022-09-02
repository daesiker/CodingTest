import Foundation

let n = Int(readLine()!)!

var array:[[Int]] = []

for _ in 0..<n {
    let tmp = readLine()!
    var tmp2 = [Int]()
    for i in tmp {
        tmp2.append(Int(String(i))!)
    }

    array.append(tmp2)
}

var answer = ""

func check(_ r: Int, _ c: Int, _ sz: Int) -> Void {

    let value = array[r][c]

    for i in r..<r+sz {
        for j in c..<c+sz {
            if value != array[i][j] {
                answer += "("
                check(r, c, sz/2)
                check(r, c+(sz/2), sz/2)
                check(r+(sz/2),c, sz/2)
                check(r+(sz/2), c+(sz/2), sz/2)
                answer += ")"
                return
            }
        }
    }

    if value == 1 {
        answer += "1"
    } else {
        answer += "0"
    }

}

check(0, 0, n)
print(answer)