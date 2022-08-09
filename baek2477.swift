import Foundation

let charm = Int(readLine()!)!
var point:[[Int]] = []

var h = 0, h_idx = 0
var w = 0, w_idx = 0

for _ in 0..<6 {
    let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
    point.append(nums)
}

for i in 0..<point.count {

    if point[i][0] == 1 || point[i][0] == 2 {
        if w < point[i][1] {
            w = point[i][1]
            w_idx = i
        }
    } else if point[i][0] == 3 || point[i][0] == 4 {
        if h < point[i][1] {
            h = point[i][1]
            h_idx = i
        }
    }
}

let sub_widx1 = w_idx == 0 ? 5 : w_idx - 1
let sub_widx2 = w_idx == 5 ? 0 : w_idx + 1

let sub_hidx1 = h_idx == 0 ? 5 : h_idx - 1
let sub_hidx2 = h_idx == 5 ? 0 : h_idx + 1


var subW = abs(point[sub_widx1][1] - point[sub_widx2][1])
var subH = abs(point[sub_hidx1][1] - point[sub_hidx2][1])

let answer = ((w*h) - (subW*subH)) * charm
print(answer)