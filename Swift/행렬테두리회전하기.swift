import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var answer:[Int] = []
    var board:[[Int]] = []
    var num = 1
    for i in 1...rows {
        var tmp:[Int] = []
        for j in 1...columns {
            tmp.append(num)
            num += 1
        }
        board.append(tmp)
    }
    
    for query in queries {
        let x1 = query[0] - 1
        let y1 = query[1] - 1
        let x2 = query[2] - 1
        let y2 = query[3] - 1
        
        var ini = board[x1][y1]
        var tmp = board[x1][y1]
        
        for i in x1..<x2 {
            board[i][y1] = board[i + 1][y1]
            if board[i][y1] < tmp {
                tmp = board[i][y1]
            }
        }
        
        for i in y1..<y2 {
            board[x2][i] = board[x2][i + 1]
            if board[x2][i] < tmp {
                tmp = board[x2][i]
            }
        }
        
        for i in stride(from: x2, to: x1, by: -1) {
            board[i][y2] = board[i - 1][y2]
            if board[i][y2] < tmp {
                tmp = board[i][y2]
            }
        }
        
        for i in stride(from: y2, to: y1, by: -1) {
            board[x1][i] = board[x1][i - 1]
            if board[x1][i] < tmp {
                tmp = board[x1][i]
            }
        } 
        board[x1][y1 + 1] = ini
        answer.append(tmp)
        
    }
    
    
    return answer
}