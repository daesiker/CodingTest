import Foundation

let n = Int(readLine()!)!

var arr = [[Int]]()

var minus = 0
var zero = 0
var one = 0

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(tmp)
}

func check(_ r: Int, _ c: Int, _ sz: Int) -> Void {

    let value = arr[r][c]

    for i in r..<r+sz {
        for j in c..<c+sz {
            if value != arr[i][j] {
                check(r, c, sz/3)
                check(r+(sz/3),c,sz/3)
                check(r+(sz/3*2),c, sz/3)
                check(r, c+(sz/3), sz/3)
                check(r+(sz/3),c+(sz/3),sz/3)
                check(r+(sz/3*2),c+(sz/3), sz/3)
                check(r, c+(sz/3*2), sz/3)
                check(r+(sz/3),c+(sz/3*2),sz/3)
                check(r+(sz/3*2),c+(sz/3*2), sz/3)
                return
            }
        }
    }


    if value == -1 {
        minus += 1
    } else if value == 0 {
        zero += 1
    } else {
        one += 1
    }

}

check(0, 0, n)
print(minus)
print(zero)
print(one)