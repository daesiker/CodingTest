import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var result = [Int]()
    let park = park.map { Array(String($0))}
    var sp:[Int] = {
        for i in 0..<park.count {
            for j in 0..<park[i].count {
                if park[i][j] == "S" {
                    return [i, j]
                }
            }
        }
        return [0,0]
    }()
    
    let lengthY = park.count
    let lengthX = park[0].count
    
    for route in routes {
        
        let r = route.components(separatedBy: " ")
        
        if let index = Int(r[1]) {
            if r[0] == "E" {
                if sp[1] + index >= 0 && sp[1] + index < lengthX {
                    var breakPoint = false
                    for i in sp[1]...sp[1]+index {
                        if park[sp[0]][i] == "X" {
                            breakPoint.toggle()
                            break
                        }
                    }
                    if !breakPoint { sp[1] = sp[1]+index }
                    
                }
            } else if r[0] == "W" {
                if sp[1] - index >= 0 && sp[1] - index < lengthX {
                    var breakPoint = false
                    for i in sp[1]-index...sp[1] {
                        if park[sp[0]][i] == "X" {
                            breakPoint.toggle()
                            break
                        }
                    }
                    if !breakPoint { sp[1] = sp[1]-index }
                }
            } else if r[0] == "S" {
                if sp[0] + index >= 0 && sp[0] + index < lengthY {
                    var breakPoint = false
                    for i in sp[0]...sp[0]+index {
                        if park[i][sp[1]] == "X" {
                            breakPoint.toggle()
                            break
                        }
                    }
                    if !breakPoint { sp[0] = sp[0]+index }
                    
                }
            } else {
                if sp[0] - index >= 0 && sp[0] - index < lengthY {
                    var breakPoint = false
                    for i in sp[0]-index...sp[0] {
                        if park[i][sp[1]] == "X" {
                            breakPoint.toggle()
                            break
                        }
                    }
                    if !breakPoint { sp[0] = sp[0]-index }
                }
            }
        }   
    }
    
    return sp
}



