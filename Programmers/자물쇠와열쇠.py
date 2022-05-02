def rotate(key):
    n = len(key)
    graph = [[0] * n for _ in range(n)]
    
    for i in range(n):
        for j in range(n):
            graph[j][n-1-i] = key[i][j]

    return graph

def check(new_lock):
    n = len(new_lock) // 3
    for i in range(n, n*2):
        for j in range(n, n* 2):
            if new_lock[i][j] != 1:
                return False
    return True

def solution(key, lock):
    m = len(key)
    n = len(lock)
    answer = True
    
    #3배 크기의 자물쇠 생성
    new_lock = [[0] * (n*3) for _ in range(n*3)]
    
    for i in range(n):
        for j in range(n):
            new_lock[n+i][n+j] = lock[i][j]
    
    for i in range(1, n*2):
        for j in range(1, n * 2):
            for d in range(4):
                key = rotate(key)
                
                for x in range(m):
                    for y in range(m):
                        new_lock[i + x][j + y] += key[x][y]
                
                if check(new_lock):
                    return True
                
                for x in range(m):
                    for y in range(m):
                        new_lock[i + x][j + y] -= key[x][y]
    
    return False