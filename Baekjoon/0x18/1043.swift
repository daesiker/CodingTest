import Foundation

var parties = [[Int]]()
var parent = [Int]()
var size = [Int]()
var n = 0, m = 0

func initUnionFind(_ n: Int) {
    parent = (0...n).map { $0 }
    size = Array(repeating: 1, count: n+1)
}

func find(_ x: Int) -> Int {
    if parent[x] == x { return x }

    parent[x] = find(parent[x])

    return parent[x]
}

func union(_ a: Int, _ b: Int) {
    var pa = find(a), pb = find(b)

    guard pa != pb else { return }

    if size[pa] < size[pb] { swap(&pa, &pb) }
    parent[pb] = pa
    size[pa] += size[pb]
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    n = input[0]
    m = input[1]

    initUnionFind(n)

    let whoKnowsTruth = Array(readLine()!.split(separator: " ").map { Int($0)! }.dropFirst())
    
    for _ in 0..<m {
        let participants = Array(readLine()!.split(separator: " ").map { Int($0)! }.dropFirst())
        parties.append(participants)
    }
    print(size)
    for party in parties {
        for i in 0..<party.count-1 {
            union(party[i], party[i+1])
        }
    }

    print(size)

    if !whoKnowsTruth.isEmpty {
        for i in 0..<whoKnowsTruth.count-1 {
            union(whoKnowsTruth[i], whoKnowsTruth[i+1])
        }
        
        print(size)
    } else {
        print(m)
    }

}

solution()