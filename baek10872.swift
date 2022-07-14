import Foundation

let number = Int(readLine()!)!

func factorial(_ num: Int) -> Int {

    if num == 0 {
        return 1
    } else {
       return num * factorial(num - 1)
    }

}

print(factorial(number))