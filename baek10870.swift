import Foundation

let num = 10

func fibonacii(_ num: Int) -> Int {
    
    if num <= 1 {
        return num
    } else {
        return fibonacii(num - 1) + fibonacii(num - 2)
    }
}

print(fibonacii(num))