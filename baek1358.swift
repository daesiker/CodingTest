import Foundation

func clacDistance(_ x: Int, _ y: Int, _ a: Int, _ b: Int) -> Int{
    return ((x-a)*(x-a)) + ((b-y)*(b-y))
}

var cnt = 0

let whxyp = readLine()!.split(separator: " ").map{Int(String($0))! }
let w = whxyp[0]
let h = whxyp[1]
let X = whxyp[2]
let Y = whxyp[3]


for _ in 0..<whxyp[4] {

    let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = xy[0]
    let y = xy[1]
    let r = Int(pow(Double(whxyp[1] / 2) , 2))

    if X <= x && x <= X + w && Y <= y && y <= Y + h {
        cnt += 1
    } else if clacDistance(X, Y + (h/2), x, y) <= r {
        cnt += 1
    } else if clacDistance(X+w, Y + (h/2), x, y) <= r {
        cnt += 1
    }

}

print(cnt)