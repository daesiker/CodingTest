import heapq

def solution(n, s, a, b, fares):
    answer = 0
    link = [[] for i in range(n+1)]
    
    for x, y, z in fares:
        link[x].append((z, y))
        link[y].append((z, x))
    
    def dijkstra(start):
        dist = [1e9] * (n+1)
        dist[start] = 0
        heap = []
        heapq.heappush(heap, (0, start))
        
        while heap:
            value, dest = heapq.heappop(heap)
            
            if dist[dest] < value :
                continue
            
            for v, d in link[dest]:
                new_value = value + v
                if dist[d] > new_value:
                    dist[d] = new_value
                    heapq.heappush(heap, (new_value, d))
        return dist
    
    #다익스트라 + dp
    dp = [[]] + [dijkstra(i) for i in range(1, n+1)]
    answer = 1e9
    
    for i in range(1, n+1):
        answer = min(dp[i][a] + dp[i][b] + dp[i][s], answer)
    
    
    return answer