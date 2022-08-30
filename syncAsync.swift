import Foundation

let concurrentQueue = DispatchQueue.init(label: "customQueue", attributes: .concurrent)
concurrentQueue.sync  { print("시작") }
concurrentQueue.async { for _ in 0...5 { print("비동기") }}
concurrentQueue.sync  { for _ in 0...5 { print("동기") } }
concurrentQueue.sync  { print("종료") }

// 시작
// 동기
// 동기
// 비동기
// 비동기
// 비동기
// 동기
// 동기
// 비동기
// 비동기
// 비동기
// 동기
// 동기
// 종료