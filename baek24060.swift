import Foundation

func merge_sort(_ array: inout [Int], _ p: Int, _ r: Int) {

    if p < r && count <= inputValues[1] {
        let q = (p+r) / 2
        merge_sort(&array, p, q)
        merge_sort(&array, q + 1, r)
        merge(&array, p, q, r)
    }

}

func merge(_ array: inout [Int], _ p: Int, _ q:Int, _ r: Int) {

    var i = p
    var j = q + 1
    var tmp = [Int]()

    while i <= q && j <= r {

        if array[i] <= array[j] {
            tmp.append(array[i])
            i += 1
        } else {
            tmp.append(array[j])
            j += 1
        }

    }

    while i <= q {
        tmp.append(array[i])
        i += 1
    }

    while j <= r {
        tmp.append(array[j])
        j += 1
    }

    i = p
    var t = 0

    while i <= r {
        array[i] = tmp[t]
        count += 1
        if count == inputValues[1] {
            result = array[i]
            break
        }

        i += 1
        t += 1
    }

}

let inputValues = readLine()!.split(separator: " ").map { Int($0)! }

var nums = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
var result = -1

merge_sort(&nums, 0, inputValues[0] - 1)
print(result)