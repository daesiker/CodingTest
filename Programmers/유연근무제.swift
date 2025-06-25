import Foundation

func convertTime(_ n:Int) -> Int {
    let h = n / 100
    let m = n % 100
    return h * 60 + m
}

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var result = 0
    
    for i in 0..<timelogs.count {
        var flag = true
        var day = startday-1
        let schedule = convertTime(schedules[i])
        
        for j in 0..<7 {
            if day >= 5 {
                day = (day+1) % 7
                continue
            }
            let time = convertTime(timelogs[i][j])
            if schedule+10 < time {
                flag = false
                break
            }
            
            day = (day+1) % 7
            
        }
        
        if flag {
            result += 1
        }
        
        
    }
    
    
    return result
}