import UIKit

func factorial(n: Int) -> Int {
    if(n==1){
        return 1
    }
    return n * factorial(n: n-1)
}

print(factorial(n: 7))