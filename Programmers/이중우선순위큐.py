import heapq

def solution(operations):
    max_heap = []
    min_heap = []
    
    for operation in operations:
        op = operation.split()
        
        if op[0] == "I":
            heapq.heappush(min_heap, int(op[1]))
            heapq.heappush(max_heap, int(op[1]) * -1)
        else :
            if op[1] == "1":
                if max_heap != []:
                    heapq.heappop(max_heap)
                    #max_heap의 길이가 0이면 원소가 아무것도 없는 것이므로 초기화 해줘야함
                    #max_heap의 최소값과 min_heap의 최솟값보다 더 작을 경우에도 초기화
                    if max_heap == [] or -max_heap[0] < min_heap[0]:
                        max_heap = []
                        min_heap = []
                    
            else :
                if min_heap != []:
                    heapq.heappop(min_heap)
                    
                    if min_heap == [] or -max_heap[0] < min_heap[0]:
                        max_heap = []
                        min_heap = []
    
    
    if len(min_heap) == 0:
        return [0,0]
    else :
        return [-max_heap[0], min_heap[0]]
    
    