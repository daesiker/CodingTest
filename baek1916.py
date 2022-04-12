import sys
from collections import defaultdict
import heapq
input = sys.stdin.readline
INF = int(1e9)

def djikstra(start):
    cnt[start] = 0
    q = []
    heapq.heappush(q, (start, 0))

    while q :
        dist, cost = heapq.heappop(q)
        
        if cnt[dist] < cost:
            continue
        
        for i in graph[dist]:
            new_cost = cost + i[1]
            if new_cost < cnt[i[0]]:
                cnt[i[0]] = new_cost
                heapq.heappush(q, (i[0], new_cost))
    


n = int(input())
m = int(input())

graph = defaultdict(list)
cnt = [INF] * (n+1)
for _ in range(m):
    a, b, c = map(int, input().split())
    graph[a].append([b,c])

start, end = map(int, input().split())

djikstra(start)
print(cnt[end])