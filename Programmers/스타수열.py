from collections import Counter

def solution(a):
    elements = Counter(a)
    answer = -1
    
    for k in elements.keys():
        
        if elements[k] <= answer :
            continue
        
        common_cnt = 0
        idx = 0
        
        while idx < len(a) - 1:
            #부분수열이 서로 같지 않아야하고 공통값 k가 하나의 인덱스에는 존재해야한다.
            if (a[idx] != k and a[idx + 1] != k) or (a[idx] == a[idx+1]):
                idx += 1
                continue
            
            common_cnt += 1
            idx += 2
        answer = max(common_cnt, answer)
    if answer == -1 :
        return 0
    else :
        return answer * 2
        
    
    return answer