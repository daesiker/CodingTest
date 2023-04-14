import Foundation

func solution(_ land:[[Int]]) -> Int{
    var land = land
    if land.count == 1 {
        
        return max(land[0][0], land[0][1], land[0][2], land[0][3])
        
    } else {
        
        for i in 1..<land.count {
            
            land[i][0] = max(land[i-1][1], land[i-1][2], land[i-1][3]) + land[i][0]
            land[i][1] = max(land[i-1][0], land[i-1][2], land[i-1][3]) + land[i][1]
            land[i][2] = max(land[i-1][1], land[i-1][0], land[i-1][3]) + land[i][2]
            land[i][3] = max(land[i-1][1], land[i-1][2], land[i-1][0]) + land[i][3]
        }
        let length = land.count-1
        return max(land[length][0], land[length][1], land[length][2], land[length][3])
    }
    
}