from collections import deque

#딕셔너리를 통해 모든 경로를 리턴
def find_tree(a, edges):
    dic = {}
    
    #간선을 딕셔너리에 저장하는 부분
    for edge in edges:
        v1, v2 = edge
        
        if v1 not in dic.keys():
            dic[v1] = []
        if v2 not in dic.keys():
            dic[v2] = []
        
        dic[v1].append(v2)
        dic[v2].append(v1)
    #bfs시작하기 전에 초기값을 생성
    q = deque([(-1,0)])
    path = []
    visited = [0] * len(a)
    visited[0] = 1
    
    while q :
        #부모노드, 자식노드
        p, c = q.popleft()
        #경로에 저장
        path.append((p,c))
        
        #자식노드 간선 탐색
        des = dic[c]
        if des :
            for d in des:
                if not visited[d]:
                    q.append((c,d))
                    visited[d] = True
    #역순으로 리턴
    return path[::-1]
        

def solution(a, edges):
    answer = 0
    path = find_tree(a, edges)
    
    #초기값을 제외하고 반복문 
    for parent, child in path[:-1]:
        c_weight = a[child]
        #정답은 절대값으로 저장
        answer += abs(c_weight)
        a[child] += -1 * c_weight
        a[parent] += c_weight
    
    if a[0] == 0 :
        return answer
    else:
        return -1
    
    return answer