import Foundation

var n = Int(readLine()!)!

if n != 1{
    while true {
        for i in 2...n {
            if n % i == 0 {
                n /= i
                print(i)
                break
            }
        }

        if n == 1 { break}


    }
}

