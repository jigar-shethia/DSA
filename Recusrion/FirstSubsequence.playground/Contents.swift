import UIKit

func printFirstSubSeqence(i:Int=0,array:[Int]=[],mainAraay:[Int],sum:Int=0) -> Bool{
    var sum1 = sum
    var temparray = array
    var n = mainAraay.count
    if i==n {
        if sum1 == 3{
            print(array)
            return true
        }
        return false
    }
    // Picking values
    temparray.append(mainAraay[i])
    sum1 = sum1 + mainAraay[i]

    if(printFirstSubSeqence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1) == true){
        return true
    }
    
    // Removing picked values
    sum1 = sum1 - (temparray.last ?? 0)
    temparray.popLast()
    
    if(printFirstSubSeqence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1) == true){
        return true
    }
    
    return false
}

printFirstSubSeqence(mainAraay: [1,2,1])
