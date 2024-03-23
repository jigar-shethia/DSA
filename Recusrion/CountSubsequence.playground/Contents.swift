import UIKit

var greeting = "Hello, playground"
func countSubSeqence(i:Int=0,array:[Int]=[],mainAraay:[Int],sum:Int=0) -> Int{
    var sum1 = sum
    var temparray = array
    var n = mainAraay.count
    if i==n {
        if sum1 == 3{
            return 1
        }
        return 0
    }
    // Picking values
    temparray.append(mainAraay[i])
    sum1 = sum1 + mainAraay[i]

   var l = countSubSeqence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1)
       
  
    
    // Removing picked values
    sum1 = sum1 - (temparray.last ?? 0)
    temparray.popLast()
    
    var r = countSubSeqence(i:i+1, array: temparray, mainAraay: mainAraay, sum: sum1)
        return l+r
    }
    

print(countSubSeqence(mainAraay: [1,2,1]))
