import UIKit

func findSubset(ind:Int=0, inputArray: [Int], dsarray:[Int]=[]) {
    var dsarray = dsarray
    for i in stride(from: ind, through: inputArray.count-1, by: 1){
        if(!(i == ind)){
            
            if(!(inputArray[i] == inputArray[i-1])){
                dsarray.append(inputArray[i])
                findSubset(ind:ind+1, inputArray: inputArray, dsarray: dsarray)
                dsarray.popLast()
            }
        }else{
            dsarray.append(inputArray[i])
            findSubset(ind:ind+1, inputArray: inputArray, dsarray: dsarray)
            dsarray.popLast()
        }
        print(dsarray)
    }
}
findSubset(inputArray: [1,2,2])
