import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    typealias PlayList = (Int, Int)
    var totalPlayDic = [String: Int]()
    var genreList = [String:[PlayList]]()
    var answer = [Int]()
    for i in 0..<genres.count {
        if let _ = totalPlayDic[genres[i]] {
            totalPlayDic[genres[i]]! += plays[i]
            genreList[genres[i]]!.append((plays[i], i))
        } else {
            totalPlayDic[genres[i]] = plays[i]
            genreList[genres[i]] = [(plays[i], i)]
        }
    }
    
    let sortedDic = totalPlayDic.sorted { $0.1 > $1.1 }
    
    for i in 0..<sortedDic.count {
        let list = genreList[sortedDic[i].key]!.sorted { $0.0 > $1.0 }
    
        if list.count == 1 {
            answer.append(list[0].1)
        } else {
            answer.append(list[0].1)
            answer.append(list[1].1)
        }
    }
    
    return answer
}