var n = Int(readLine()!)!
let INF = 1_234_567_890
var cache = [Int](repeating: INF, count: n + 1)
var prevNumber = [Int](repeating: 0, count: n + 1)
cache[1] = 0
prevNumber[1] = 1
if n > 1 {
    for i in 2...n {
        cache[i] = cache[i - 1] + 1
        prevNumber[i] = i - 1
        if i % 3 == 0 && cache[i / 3] + 1 < cache[i] {
            cache[i] = cache[i / 3] + 1
            prevNumber[i] = i / 3
        }
        if i % 2 == 0 && cache[i / 2] + 1 < cache[i] {
            cache[i] = cache[i / 2] + 1
            prevNumber[i] = i / 2
        }
    }
}

print(cache[n])
print(n, terminator: " ")

while n != 1 {
    print(prevNumber[n], terminator: " ")
    n = prevNumber[n]
}