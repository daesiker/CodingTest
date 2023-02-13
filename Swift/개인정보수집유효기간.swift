import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {

    let now = dateToNum(today)
    var answer:[Int] = []
    var termDic:[String: Int] = [:]

    for term in terms {
        let tmp = term.components(separatedBy: " ")
        termDic[tmp[0]] = Int(tmp[1])
    }

    for i in 0..<privacies.count {
        let tmp = privacies[i].components(separatedBy: " ")
        let distroyDay = dateToNum(tmp[0], month: termDic[tmp[1]]!)

        if distroyDay <= now {
            answer.append(i+1)
        }
    }

    

    return answer
}

func dateToNum(_ date: String, month:Int = 0) -> Int {

    let tmp = date.components(separatedBy: ".")

    let year = Int(tmp[0])! * 12 * 28
    let month:Int = (Int(tmp[1])! + month) * 28
    let day:Int = Int(tmp[2])!

    var total = year + month + day
    total = month == 0 ? total : total-1

    return total

}


print(solution("2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]))