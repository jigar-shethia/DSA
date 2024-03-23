import UIKit

func printSubsequence(i:Int=0,array:[Int]=[],mainAraay:[Int]){
    
    var temparray = array
    var n = mainAraay.count
    if i==n {
            print(array)
        return
    }
    // Picking values
    temparray.append(mainAraay[i])
    printSubsequence(i:i+1, array: temparray, mainAraay: mainAraay)
    
    // Removing picked values
    
    temparray.popLast()
    printSubsequence(i:i+1, array: temparray, mainAraay: mainAraay)
    
}

printSubsequence(mainAraay: [1,2,1])
