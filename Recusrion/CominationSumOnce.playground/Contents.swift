import UIKit

func cominationOnce(i:Int=0, target:Int, dsarray:Set<Int>=[], inputArray:[Int], inputTarget:Int){
    var dsarray = dsarray
    if(i>=inputArray.count){
        if(target == 0){
            print(dsarray)
        }
        return
    }
    if(inputArray[i]<=target) {
        dsarray.insert(inputArray[i])
        cominationOnce(i:i+1,target: target-inputArray[i],dsarray:dsarray, inputArray: inputArray, inputTarget: inputTarget)
        dsarray.dropLast()
        cominationOnce(i:i+1,target: target,dsarray:dsarray, inputArray: inputArray, inputTarget: inputTarget)
    }
}
cominationOnce(target: 8, inputArray: [10,1,2,7,6,1,5], inputTarget: 8)
