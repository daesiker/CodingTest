import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    
    //조합을 만들기 전 사전 작업
    let totalList = [["java","python","cpp","-"],["backend","frontend","-"],["junior","senior","-"],["pizza","chicken","-"]]
    var possible = [[String] : [Int]]()
    var answer:[Int] = []
    
    var temp = [String]()
    
    func combination(_ idx: Int, _ list:[[String]], _ score: Int) {
        //4가지가 추가가 되면 맨 처음에는 빈 배열 그 다음부터는 점수를 요소로 추가
        if temp.count == 4 {
            if possible[temp] == nil {
                possible[temp] = []
            } else {
                possible[temp]!.append(score)
            }
            return
        } else {
            //4가지 조합을 추가
            for i in idx..<list.count {
                for j in 0..<list[i].count {
                    temp.append(list[i][j])
                    combination(i+1, list, score)
                    temp.removeLast()
                }
            }
        }
    }
    //사전 작업 점수를 제외한 모든 항목들을 딕셔너리로 초기화 
    combination(0, totalList, 0)
    
    //info에 각 항목마다 점수를 추가한다.
    info.forEach {
        var list = $0.split(separator: " ").map{[String($0), "-"]}
        
        let score = list.removeLast()
        combination(0, list, Int(score[0])!)
    }
    
    //2분 탐색을 위한 벨류값 정렬
    for key in possible.keys {
        possible[key] = possible[key]!.sorted()
    }
    
    query.forEach {
        var query = $0.split(separator: " ").map {String($0)}.filter{( $0 != "and")}
        let score = Int(query.removeLast())!
        
        //쿼리 값이 없으면 0
        if possible[query] == nil {
            answer.append(0)
        //있으면 점수보다 높은 학생들을 구함(이분탐색)
        } else {
            var l = 0, r = possible[query]!.count - 1
            while l <= r {
                let mid = (r + l) / 2
                if possible[query]![mid] >= score {
                    r = mid - 1
                } else {
                    l = mid + 1
                }
            }
            answer.append(possible[query]!.count - l)
        }
    }
    
    
    
    return answer
}