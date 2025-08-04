import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let tmp = Int(readLine()!)!
    print(dp(tmp))
}

func dp(_ num: Int) -> Int {

    if num == 1 {
        return 1
    } else if num == 2 {
        return 2
    } else if num == 3 {
        return 4
    } else {
        return dp(num-3) + dp(num-2) + dp(num-1)
    }


}