import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var cPriorities = priorities
    var targetIndex = location
    var seq = 0
    
    while cPriorities.count > 0 {
        //우선순위인게 하나라도 있다면
        if cPriorities.contains(where: { $0 > cPriorities[0] }) {
            //첫번째 요소를 가장 뒤로 보낸다.
            let first = cPriorities.removeFirst()
            cPriorities.append(first)
            //targetIndex도 변경
            targetIndex = targetIndex - 1 < 0 ? cPriorities.count - 1 : targetIndex - 1
        } else {
            if targetIndex == 0 {
                return priorities.count - cPriorities.count + 1
            }
            
            cPriorities.removeFirst()
            targetIndex = targetIndex - 1
        }
        
    }
    
    return 0
}