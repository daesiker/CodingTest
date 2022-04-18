import heapq

def solution(jobs):
    answer, now, i = 0, 0, 0
    start = -1
    heap = []
    
    while i < len(jobs):
        for j in jobs:
            #작업 요청시간은 바로 이전에 완료한 작업의 시작시간보다 크고 현재시점보다 작아야한다.
            if start < j[0] <= now:
                #작업 소요시간을 기준으로 최소힙을 만들어야한다.
                heapq.heappush(heap, [j[1], j[0]])
        if len(heap) > 0 :
            current = heapq.heappop(heap)
            start = now
            now += current[0]
            answer += (now - current[1])
            i += 1
        else :
            now += 1
                
    
    
    return int(answer / len(jobs))