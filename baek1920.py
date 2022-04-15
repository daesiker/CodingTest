n = int(input())
n_list = list(map(int, input().split(" ")))
n_list.sort()
m = int(input())
targets = list(map(int, input().split(" ")))

def binary(target):
    start = 0
    end = n - 1

    while start <= end:
        mid = (start + end) // 2

        if n_list[mid] == target:
            return 1
        
        if target < n_list[mid]:
            end = mid - 1
        else:
            start = mid + 1
    return 0

for i in targets:
    print(binary(i))