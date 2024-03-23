import UIKit

func combinationSum(i:Int=0, target:Int, inputTarget:Int, ansArray:[[Int]]=[],dsarray:[Int]=[],inputArray:[Int]){
    var ansArray = ansArray
    var dsarray = dsarray
    
    
    
    if(i==inputArray.count){
        if(target == 0){
            ansArray.append(dsarray)
            print(dsarray)
        }
        return
    }
    if(inputArray[i]<=target){
        dsarray.append(inputArray[i])
        combinationSum(i:i, target:target-inputArray[i], inputTarget:inputTarget, ansArray:ansArray,dsarray: dsarray, inputArray:inputArray)
        dsarray.popLast()
    }
    combinationSum(i:i+1, target:target, inputTarget:inputTarget, ansArray:ansArray,dsarray: dsarray, inputArray:inputArray)
}


combinationSum(target: 8, inputTarget: 8, inputArray: [2,3,5])
