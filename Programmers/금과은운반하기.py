def solution(a, b, g, s, w, t):
    #정답일 수 있는 최대값
    answer = (10 ** 9) * (10 ** 5) * 4
    
    start = 0
    end = (10 ** 9) * (10 ** 5) * 4
    
    while start <= end:
        
        mid = (start + end) // 2
        gold = 0
        silver = 0
        total = 0
        
        for i in range(len(g)):
            now_gold = g[i]
            now_silver = s[i]
            now_weight = w[i]
            now_time = t[i]
            
            #움직이는 횟수를 왕복을 기준으로 계산을 한다.
            move_cnt = mid // (now_time * 2)
            
            #편도의 경우
            if mid % (now_time * 2) >= now_time:
                move_cnt += 1
            

            gold += now_gold if (now_gold < move_cnt * now_weight) else move_cnt * now_weight
            silver += now_silver if (now_silver < move_cnt * now_weight) else move_cnt * now_weight
            
            total += now_gold + now_silver if (now_gold + now_silver < move_cnt * now_weight) else move_cnt * now_weight
        
        #이분 탐색 시작 조건이 맞으면 정답의 값을 최소값으로 변경
        if gold >= a and silver >= b and total >= a + b :
            end = mid - 1
            answer = min(answer, mid)
        else :
            start = mid + 1
            
        
    
    return answer