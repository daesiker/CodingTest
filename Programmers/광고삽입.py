def solution(play_time, adv_time, logs):
    play_time = str2Int(play_time)
    adv_time = str2Int(adv_time)
    all_time = [0 for _ in range(play_time + 1)]
    
    for log in logs:
        start, end = log.split("-")
        start = str2Int(start)
        end = str2Int(end)
        all_time[start] += 1
        all_time[end] -= 1
    
    #구간별 시청자수 정보 저장
    for i in range(1, len(all_time)) :
        all_time[i] = all_time[i] + all_time[i-1]
        
    #누적 시청자수 정보 저장
    for i in range(1, len(all_time)) :
        all_time[i] = all_time[i] + all_time[i-1]
    
    most_view = 0
    max_time = 0
    
    for i in range(adv_time - 1, play_time):
        if i >= adv_time:
            if most_view < all_time[i] - all_time[i - adv_time] :
                most_view = all_time[i] - all_time[i - adv_time]
                max_time = i - adv_time + 1
        else :
            if most_view < all_time[i]:
                most_view = all_time[i]
                max_time = i - adv_time + 1
    
    return int2Str(max_time)


def int2Str(time):
    h, m = divmod(time, 3600)
    m, s = divmod(m, 60)
    new_time = "{:02d}:{:02d}:{:02d}".format(h,m,s)
    return new_time

def str2Int(time):
    h, m, s = time.split(":")
    return int(h) * 3600 + int(m) * 60 + int(s)