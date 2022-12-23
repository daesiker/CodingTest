var arr:[Int] = []
var sum:Int = 0

for _ in 0..<5 {
    let n = Int(readLine()!)!
    arr.append(n)
    sum += n
}

arr.sort()
print(sum/5)
print(arr[2])