#시간초과
def dp(a, count) :
    global answer

    if a != int(a):
        return
    if a == 1:
        answer = min(answer, count)
    else :
        dp(a/3, count + 1)
        dp(a/2, count + 1)
        dp(a-1, count + 1)

a = int(input())
d = [0] * (a+1)

for i in range(2, a+1):
    #단순 1만 빼는 경우 
    d[i] = d[i-1] + 1 
    #2로 나눌때
    if i % 2 == 0 :
        #단순 1만빼는 경우보다 작은지 확인
        d[i] = min(d[i], d[i // 2] + 1)
    if i % 3 == 0:
        d[i] = min(d[i], d[i // 3] + 1)

print(d[a])

