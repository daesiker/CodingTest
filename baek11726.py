import sys
sys.setrecursionlimit(10 ** 6)
#시간초과
def dp(num):
    if num == 1:
        return 1
    elif num == 2:
        return 2
    else :
        return dp(num -1) + dp(num - 2)

num = int(input())

graph = [0,1,2]

for i in range(3, 1001) :
    graph.append(graph[i-1] + graph[i-2])

print(graph[num] % 10007)
#print(dp(num) % 10007)