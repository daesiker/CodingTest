import Foundation

let strings = readLine()!

var answer = Set<Substring>()

for i in strings.indices {
    for j in strings.indices[i...] {
        answer.update(with: strings[i...j])
    }
}


print(answer.count)