def solution(m, n, puddles):
    #puddles의 좌표를 바꿔줘야한다.
    puddles = [[q,p] for [p, q] in puddles]
    dp = [[0] * (m+1) for _ in range(n+1)]
    dp[1][1] = 1
    
    for i in range(1, n+1):
        for j in range(1, m+1):
            #초기값은 바로 지나간다.
            if i == 1 and j == 1: continue
            #i,j 좌표가 puddles안에 있으면 0으로 초기화 해야한다.
            #갈 수 없으니까
            if [i,j] in puddles:
                dp[i][j] = 0
            else :
                dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % 1000000007
    
    return dp[n][m]