import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var answer = 0
    var truck_weights = truck_weights
    var truck:[Int] = []
    var distance:[Int] = []
    
    //트럭을 하나 올리면서 시간을 증가
    let go: (Int) -> () = { i in truck.append(i); distance.append(1)}
    
    let sum = { truck.reduce(0) { $0 + $1 }}
    
    let depart = {
        let first = distance.first ?? 0
        if first > bridge_length { truck.removeFirst(); distance.removeFirst() }
    }
    
    let doing = { distance  = distance.map { $0 + 1}; answer += 1}
    
    while !truck.isEmpty || !truck_weights.isEmpty {
        //다리에 있는 트럭이 하나라도 있으면 진행
        doing()
        depart()
        if let first = truck_weights.first {
            //무게가 초과하지 않는 다면
            if sum() + first <= weight {
                //다음 트럭을 다리위에 올림
                go(truck_weights.removeFirst())
            }
        }
    }
    
    return answer
}