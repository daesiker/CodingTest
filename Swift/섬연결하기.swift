import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var costs = costs.sorted { $0[2] < $1[2]}
    var answer = 0
    var graph:Set<Int> = [costs[0][0]]
    
    while graph.count < n {
        for cost in costs {
            if graph.contains(cost[0]) && graph.contains(cost[1]) {
                continue
            }
            if graph.contains(cost[0]) || graph.contains(cost[1]) {
                graph.insert(cost[0])
                graph.insert(cost[1])
                answer += cost[2]
                break
            }   
        }   
    }
    return answer
}