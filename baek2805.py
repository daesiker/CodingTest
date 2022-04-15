n, target = map(int, input().split())
woods = list(map(int, input().split()))
woods.sort()

def binary(target):
    start = 1
    end = woods[n-1]
    while start <= end :
        mid = (start + end) // 2
        length = 0
        for wood in woods:
            if wood > mid :
                length += (wood - mid)
        
        if length >= target:
            start = mid + 1
        else :
            end = mid - 1
    return end

print(binary(target))
