import UIKit

func printNumber(from:Int, endvalue:Int){
    if from > endvalue{
        return
    }
    print(from)
    printNumber(from: from + 1, endvalue: endvalue)
}

printNumber(from: 0, endvalue: 4)
