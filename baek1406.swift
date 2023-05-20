import Foundation

class Node {
    var prev: Node? = nil
    var next: Node? = nil
    var removed:Bool = false
    var x:String

    init(_ x: String) {
        self.x = x
    }
}

let edit = readLine()!.map { String($0) }

var nodeArr = [Node]()

for i in 0..<edit.count {
    nodeArr.
}