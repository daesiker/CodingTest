
import Foundation

func convertTime(_ time: String) -> Int {
    let components = time.split(separator: ":").map { Int($0)! }
    return components[0] * 60 + components[1]
}

func convertString(_ time: Int) -> String {
    let minutes = time / 60
    let seconds = time % 60
    return String(format: "%02d:%02d", minutes, seconds)
}


func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    let op_start = convertTime(op_start)
    let op_end = convertTime(op_end)
    var pos = convertTime(pos)
    let video_len = convertTime(video_len)

    if op_start...op_end ~= pos {
        pos = op_end
    }

    for command in commands {

        if command == "next" {
            pos += 10
            


        }
        
    }


    return ""
}