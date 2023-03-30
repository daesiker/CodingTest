import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var x = [Int]()
    var y = [Int]()
    let wallpaper = wallpaper.map { Array(String($0)) }
    for i in 0..<wallpaper.count {
        for j in 0..<wallpaper[i].count {
            if wallpaper[i][j] == "#" {
                y.append(i)
                x.append(j)
            }
        }
    }
    x.sort(by: <)
    y.sort(by: <)
    return [y[0], x[0], y[y.count-1]+1, x[x.count-1]+1]
}