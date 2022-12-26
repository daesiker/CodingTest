func recursion(s: [String], l: Int, r: Int, cnt: inout Int) -> Int{
    cnt += 1
    
    if l >= r { return 1 }
    else if s[l] != s[r] { return 0 }
    else{ return recursion(s: s, l: l+1, r: r-1, cnt: &cnt)}
}

func isPalindrome(s: String){
    var cnt = 0
    let stringArr = Array(s).map{ String($0) }
    
    print(recursion(s: stringArr, l: 0, r: stringArr.count-1, cnt: &cnt), cnt)

}

for _ in 0..<Int(readLine()!)! {
    let a = String(readLine()!)

    isPalindrome(s: a)
}