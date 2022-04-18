from collections import deque

def dfs(num, visited, graph):
    q = deque()
    q.append(num)
    visited[num] = True
    
    while q :
        node = q.popleft()
        
        for i in graph[node]:
            if not visited[i]:
                visited[i] = True
                q.append(i)
    

def solution(n, computers):
    visited = [False] * (n)
    graph = [[] for _ in range(n)]
    answer = 0
    
    for i in range(len(computers)):
        for j in range(n) :
            if computers[i][j] == 1:
                graph[i].append(j)
    
    for i in range(n):
        if not visited[i]:
            dfs(i, visited, graph)
            answer += 1
    
    return answer