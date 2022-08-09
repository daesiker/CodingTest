let total = Int(readLine()!)!

let n = Int(readLine()!)!

var price = 0


for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    price += (tmp[0] * tmp[1])
}

if price == total {
    print("Yes")
} else {
    print("No")
}

