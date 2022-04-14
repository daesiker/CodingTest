def solution(n, times):
    answer = 0
    #times는 정렬되있으므로 -1 인덱스가 최대값이다.
    start, end, mid = 1, times[-1] * n, 0
    #이분탐색 시작
    while start < end:
        mid = (start + end) // 2
        total = 0
        #mid분 동안 심사받은 사람의 수를 구한다.
        for time in times:
            total += mid // time
        
        #심사받은 사람의 수가 더 같거나 많으면 end값 변경
        if total >= n :
            end = mid
        else :
            start = mid + 1
    answer = start
    return answer


print(solution(6, [7, 10]))