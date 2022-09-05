import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let p = 1000000007

func factorial(_ n: Int) -> Int {
    var result = 1

    for i in 2...n {
        result = (result * i) % p
    }

    return result
}

func square(_ n:Int, _ k:Int) -> Int {
    if k == 0 {
        return 1
    } else if k == 1 {
        return n
    }

    let tmp = square(n, k/2)

    if k % 2 == 1 {
        return tmp * tmp * n % p
    } else {
        return tmp * tmp % p
    }
}

let top = factorial(nk[0])
let bot = factorial(nk[0] - nk[1]) * factorial(nk[1]) % p

print(top * square(bot, p-2) % p)