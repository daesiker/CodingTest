import Foundation

var board:[[Int]] = []
var empty:[Point] = []
var answer = ""

struct Point {
    var i: Int
    var j: Int
}

for _ in 0..<9 {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(tmp)
}

for i in 0..<9 {
    for j in 0..<9 {
        if board[i][j] == 0 {
            empty.append(Point(i: i, j: j))
        }
    }
}

dfs(0)

func searchRow(_ i: Int, _ num: Int) -> Bool {
    for k in 0..<9 {
        if num == board[i][k] {
            return false
        }
    }
    return true
}

func searchColumn(_ j:Int, _ num: Int) -> Bool {
    for k in 0..<9 {
        if num == board[k][j] {
            return false
        }
    }
    return true
}

func searchBox(_ i:Int, _ j:Int, _ num: Int) -> Bool {
    let n = Int(i/3) * 3
    let m = Int(j/3) * 3

    for k in n..<n+3 {
        for l in m..<m+3 {
            if board[k][l] == num {
                return false
            }
        }
    }

    return true
}

func dfs(_ index: Int) {

    if index == empty.count {
        printAnswer()
        exit(0)
    }

    for num in 1...9 {
        let i = empty[index].i
        let j = empty[index].j

        if searchBox(i, j, num) && searchColumn(i, num) && searchRow(j, num) {
            board[i][j] = num
            dfs(index + 1)
            board[i][j] = 0
        }
    }

}

func printAnswer() {
    for line in board {
        for item in line {
            answer += "\(item) "
        }
        answer += "\n"
    }

    print(answer)
}