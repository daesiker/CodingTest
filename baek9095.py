
T = int(input())

def dp(num):
    if num == 1:
        return 1
    elif num == 2 :
        return 2
    elif num == 3 :
        return 4
    else :
        return dp(num -1) + dp(num - 2) + dp(num - 3)

for _ in range(T):
    num = int(input())
    print(dp(num))