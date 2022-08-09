import Foundation

let num = Int(readLine()!)!

let uclid = String(format: "%.6f",pow(Double(num), 2) * 3.14159265359)
let taxi = String(format: "%.6f", pow(Double(num), 2) * 2)

print(uclid)
print(taxi)