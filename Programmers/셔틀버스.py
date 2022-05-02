def solution(n, t, m, timetable):
    answer = ''
    timetable.sort(reverse = True)
    dic = {}
    bus = 540
    for i in range(n):
        tmp = m
        dic[bus] = []

        while True :
            
            if len(timetable) == 0 : break
            if tmp == 0: break
            h = timetable[-1].split(":")
            time = int(h[0]) * 60 + int(h[1])
            
            if time <= bus:
                dic[bus].append(time)
                timetable.pop()
                tmp -= 1
            else :
                break
        if i < n - 1:
            bus += t
    if len(dic[bus]) < m :
        a, b = divmod(bus, 60)
        return "{:02d}:{:02d}".format(a, b)
    else :
        a, b = divmod(dic[bus][-1] - 1, 60)
        return "{:02d}:{:02d}".format(a, b)
    
    return answer
