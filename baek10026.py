import sys
sys.setrecursionlimit(1000000)
from collections import deque

def bfs(x, y):
    q = deque()
    q.append((x,y))
    color = graph[x][y] #방문기준
    visited[x][y] = True #초기값 세팅
    while q :
        x, y = q.popleft()

        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]

            if 0 <= nx < n and 0<= ny < n and graph[nx][ny] == color and not visited[nx][ny] :
                visited[nx][ny] = True
                q.append((nx, ny))

n = int(input())
graph = []
dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]
visited = [[False] * n for _ in range(n)]
for _ in range(n):
    tmp = list(map(str, input()))
    graph.append(tmp)
answer = []
cnt = 0

#정상인인 경우
for i in range(n) :
    for j in range(n):
        if not visited[i][j]:
            bfs(i, j)
            cnt += 1
    
answer.append(cnt)

#적록색약인 경우 R -> G로 변환
for i in range(n) :
    for j in range(n):
        if graph[i][j] == "R":
            graph[i][j] = "G"

visited = [[False] * n for _ in range(n)]
cnt = 0

for i in range(n) :
    for j in range(n):
        if not visited[i][j]:
            bfs(i, j)
            cnt += 1

answer.append(cnt)

print(answer[0], answer[1])