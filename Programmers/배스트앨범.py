def solution(genres, plays):
    answer = []
    index_dic = {}
    total_dic = {}
    
    
    for genre, i in zip(genres, range(len(plays))):
        if genre in index_dic.keys():
            index_dic[genre].append((i, plays[i]))
            total_dic[genre] += plays[i]
        else :
            index_dic[genre] = [(i, plays[i])]
            total_dic[genre] = plays[i]
    #딕셔너리 솔팅 방법에 대해 좀더 연구할 필요가 있다.
    total = sorted(total_dic.items(), key=lambda x : x[1], reverse = True)
    
    for to in total:
        genre = to[0]
        cnt = 0
        for index in sorted(index_dic[genre], key=lambda x : x[1], reverse = True):
            answer.append(index[0])
            cnt += 1
            if cnt == 2:
                break
    
    
    
    return answer