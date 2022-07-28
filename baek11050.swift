import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))!}

func factorial(_ a: Int) -> Int {

    if a == 0 { return 1 }

    var result = 1

    for i in 1...a {
        result *= i
    }
    return result
}

print(factorial(nk[0]) / (factorial(nk[1]) * factorial(nk[0] - nk[1])))


