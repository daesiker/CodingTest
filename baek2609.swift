import Foundation

func gcd(_ min: Int, _ max: Int) -> Int {
    let remain = min % max

    if remain == 0 {
        return max
    } else {
        return gcd(max, remain)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a,b)
}

var nm = readLine()!.split(separator: " ").map { Int(String($0))! }
nm.sort()

print(gcd(nm[0], nm[1]))
print(lcm(nm[0], nm[1]))