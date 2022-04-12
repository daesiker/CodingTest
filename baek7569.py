import sys
input = sys.stdin.readline
from collections import deque
sys.setrecursionlimit(10 ** 6)

def bfs(queue):
    cnt = -1
    while queue:

        for _ in range(len(queue)):
            x, y, z = queue.popleft()
            for i in range(6):
                nx = x + distance[i][0]
                ny = y + distance[i][1]
                nz = z + distance[i][2]

                if 0<= nx < n and 0<= ny < m and 0<= nz < c:
                    if graph[nz][ny][nx] == 0 :
                        graph[nz][ny][nx] = 1
                        queue.append((nx,ny,nz))
        cnt += 1
    for z in range(c):
        for y in range(m):
            for x in range(n):
                if graph[z][y][x] == 0:
                    print(-1)
                    return
    print(cnt)
    return


n, m, c = map(int, input().split())
graph = []
distance = [(1, 0, 0), (-1, 0, 0), (0, 1, 0), (0, -1, 0), (0, 0, 1), (0, 0, -1)]

for _ in range(c):
    tmp = []
    for _ in range(m):
        g_tmp = list(map(int ,input().split()))
        tmp.append(g_tmp)
    graph.append(tmp)

queue = deque()
for z in range(c):
    for y in range(m):
        for x in range(n):
            if graph[z][y][x] == 1:
                queue.append((x,y,z))



bfs(queue)
