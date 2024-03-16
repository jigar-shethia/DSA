import UIKit

// Without using + operator

func printNumbers(i:Int, n:Int) {
    if n < 1{
        return
    }
    printNumbers(i: i-1, n: n)
    print(i)
}

printNumbers(i: 3, n: 3)
