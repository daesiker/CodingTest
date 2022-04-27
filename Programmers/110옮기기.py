from collections import deque

def solution(s):
    answer = []
    
    for string in s :
        stack = []
        count = 0
        
        for s in string:
            if s == "0":
                #stack 마지막이 ["1", "1"]이라면 카운트 추가 및 stack에서 삭제
                if stack[-2:] == ["1", "1"] :
                    count += 1
                    stack.pop()
                    stack.pop()
                else :
                    stack.append(s)
            else :
                stack.append(s)
        
        if count == 0 :
            answer.append(string)
        else :
            final = deque()
            
            while stack:
                #stack의 마지막 인덱스부터 0이 있는지 계속확인
                if stack[-1] == '1':
                    final.append(stack.pop())
                #사전에서 제일 앞 = 가장 작은 숫자
                elif stack[-1] == '0':
                    break
            #맨처음 나온 0앞에 110의 개수만큼 추가
            while count > 0:
                final.appendleft('0')
                final.appendleft('1')
                final.appendleft('1')
                count -= 1
            #stack에 나머지 부분 추가
            while stack:
                final.appendleft(stack.pop())
            answer.append(''.join(final))
    
    return answer