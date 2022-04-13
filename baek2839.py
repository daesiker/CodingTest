sugar = int(input())
count = 0

while sugar >= 0 :
    #sugar가 5의 배수일 때가 가장 작음 개수를 가짐
    if sugar % 5 == 0 :
        count += int(sugar // 5)
        print(count)
        break
    #5의 배수가 아니면 3씩 제거하면서 3kg 개수를 늘려준다.
    sugar -= 3
    count += 1
#sugar가 음수가 되면 정확한 계산이 안된다는 것이므로 -1 리턴
else :
    print(-1)