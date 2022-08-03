let input  = readLine()!.split(separator: " ").map { Int($0) }

func dfs(result: String, maxNum: Int, count: Int, startIndex: Int, depth: Int) {
    
    if count == depth {
        print(result)
        
        return
    }
        
    for i in startIndex..<maxNum {
        dfs(result: result + "\(i+1) ", maxNum: maxNum, count: count, startIndex: i, depth: depth + 1)
    }
}

dfs(result: "", maxNum: input[0]!, count: input[1]!, startIndex: 0, depth: 0)