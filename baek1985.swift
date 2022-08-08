import Foundation

let xywh = readLine()!.split(separator: " ").map { Int(String($0))! }

let x = min(xywh[0], xywh[2] - xywh[0])
let y = min(xywh[1], xywh[3] - xywh[1])

print(min(x,y))

