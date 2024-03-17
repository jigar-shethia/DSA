import UIKit

// Without using + operator

func printNumbers(i:Int, n:Int) {
    if n < 1{
        return
    }
    printNumbers(i: i, n: n-1)
    print(n)
}

printNumbers(i: 3, n: 3)
