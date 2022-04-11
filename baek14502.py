from collections import deque
import copy #깊은 복사를 하기위한 라이브러리


def bfs():
    q = deque()
    tmp_graph = copy.deepcopy(graph)

    for i in range(n):
        for j in range(m):
            if graph[i][j] == 2 :
                q.append((i,j))
    while q :
        x, y = q.popleft()
        for i in range(4) :
            nx = x + dx[i]
            ny = y + dy[i]

            if 0<= nx < n and 0<= ny < m and tmp_graph[nx][ny] == 0:
                tmp_graph[nx][ny] = 2
                q.append((nx, ny))
    global answer

    cnt = 0
    for i in range(n):
        cnt += tmp_graph[i].count(0)
    answer = max(cnt, answer)

def makeWall(cnt):
    if cnt == 3 :
        bfs()
        return
    for i in range(n):
        for j in range(m):
            if graph[i][j] == 0:
                graph[i][j] = 1
                makeWall(cnt+1)
                graph[i][j] = 0 #다시 초기화를 무조건 해줘야한다.

n, m = map(int, input().split())
dx = [-1, 1, 0, 0]
dy = [0,0,1,-1]
graph = []
answer = 0
for _ in range(n):
    tmp = list(map(int, input().split()))
    graph.append(tmp)

makeWall(0)
print(answer)