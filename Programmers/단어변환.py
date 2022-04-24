from collections import deque

def bfs(begin, target, words, visited):
    count = 0
    stack = deque()
    # 0 : 현재 단어, 1: 깊이
    stack.append((begin, 0))
    
    while stack :
        cur, depth = stack.popleft()
        #현재 단어와 target이 같으면 while문 탈출
        if cur == target:
            return depth
        

        for i in range(len(words)):
            #방문한 단어면 continue
            if visited[i] == True:
                continue
            cnt = 0
            
            #a와 b가 다를 때마다 임시값 +1
            for a, b in zip(cur, words[i]):
                if a != b:
                    cnt += 1
            #1개만 바뀌면 방문
            if cnt == 1 :
                visited[i] = True
                stack.append((words[i], depth + 1))
        
    

def solution(begin, target, words):
    answer = 0
    
    if target not in words:
        return answer
    
    visited = [False] * len(words)
    
    answer = bfs(begin, target, words, visited)
    return answer