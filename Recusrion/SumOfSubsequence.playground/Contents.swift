import UIKit

func printSumOfSubsequence(i:Int=0,array:[Int]=[],mainAraay:[Int],sum:Int=0){
    var sum1 = sum
    var temparray = array
    var n = mainAraay.count
    if i==n {
        if sum1 == 3{
            print(array)
        }
        return
    }
    // Picking values
    temparray.append(mainAraay[i])
    sum1 = sum1 + mainAraay[i]

    printSubsequence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1)
    
    // Removing picked values
    sum1 = sum1 - (temparray.last ?? 0)
    temparray.popLast()
    
    printSubsequence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1)
    
}

printSubsequence(mainAraay: [1,2,1])

