import UIKit

func fabonacciNumber(n:Int) -> Int {
    
    if(n<=1){
        return 1
    }
    var last = fabonacciNumber(n: n-1)
    var secondlast = fabonacciNumber(n: n-2)
    return last+secondlast
}

print(fabonacciNumber(n: 5))
