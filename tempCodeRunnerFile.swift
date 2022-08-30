import Foundation




//Task1
func task1() {
    for _ in 0..<5 {
        print("첫번째 작업")
    }
}

//Task2
func task2() {
    for _ in 0..<5 {
        print("두번째 작업")
    }
}

//Task3
func task3() {
    for _ in 0..<5 {
        print("세번째 작업")
    }
    
}

//Task4
func task4() {
    for _ in 0..<5 {
        print("네번째 작업")
    }
}

let concurrentQueue = DispatchQueue.init(label: "customQueue", attributes: .concurrent)
concurrentQueue.sync  { task1() }
concurrentQueue.async { task2() }
concurrentQueue.sync  { task3() }
concurrentQueue.sync  { task4() }

