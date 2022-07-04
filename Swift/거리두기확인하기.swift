import Foundation

func isManhattanDistance(_ places:[[String]]) -> Bool {
    let dx = [ 1, 2, 0, 0, 1, -1]
    let dy = [0, 0, 1, 2, 1, 1]
    
    for row in 0..<5 {
        for col in 0..<5 {
            //사람인지 확인
            if places[row][col] == "P" {
                for i in 0..<6 {
                    //맨하탄 2 이내의 범위를 확인
                    let (nx, ny) = (row+dx[i], col+dy[i])

                    //해당 좌표가 범위를 벗어나지 않고 사람인 경우 체크
                    if (0..<5).contains(nx) && (0..<5).contains(ny) && places[nx][ny] == "P" {
                        
                        // x좌표가 원래 값이랑 같은 경우
                        if row == nx {
                            if ny - col == 0 {
                                return false
                            } else {
                                //파티션이 아닌경우에는 규칙을 벗어남
                                if places[row][col+1] != "X" {
                                    return false
                                }
                            }
                        //y좌표가 원래 값이랑 같은 경우
                        } else if col == ny {
                            if nx - row == 0 {
                                return false
                            } else {
                                if places[row+1][col] != "X" {
                                    return false
                                }
                            }
                        } else {
                            if row > nx {
                                //x좌표
                                //근처에 하나라도 파티션이 아니라면 false
                                if places[row-1][col] != "X" || places[row][col+1] != "X"{
                                    return false
                                }
                            } else {
                                if places[row+1][col] != "X" || places[row][col+1] != "X"{
                                    return false
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return true
}


func solution(_ places:[[String]]) -> [Int] {

    let places = places.map {$0.map{$0.map{String($0)}}}
    var res:[Int] = []

    for place in places {
        res.append(isManhattanDistance(place) ? 1:0)
    }

    return res
}
