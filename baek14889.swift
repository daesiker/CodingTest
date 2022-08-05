import Foundation

let n = Int(readLine()!)!
var visited = [Bool](repeating: false, count: n)
var team1 = 0
var team2 = 0
var minResult = 999999
var board:[[Int]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(tmp)
}

func dfs(depth: Int, start: Int) {

    if depth == n/2 {
        team1 = 0
        team2 = 0
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i] && !visited[j] {
                    team2 += board[i][j]
                }
                if visited[i] && visited[j] {
                    team1 += board[i][j]
                }
            }
        }
        minResult = min(minResult, abs(team1 - team2))
        return
    }

    for i in start..<n {

        if !visited[i] {
            visited[i] = true
            dfs(depth: depth + 1, start: i)
            visited[i] = false
        }

    }

}

dfs(depth: 0, start: 0)
print(minResult)