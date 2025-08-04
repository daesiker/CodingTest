import Foundation

let documents = readLine()!
let words = readLine()!

let tmp = documents.components(separatedBy: words).joined(separator: "")

print((documents.count - tmp.count) / words.count)

