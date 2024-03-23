import UIKit

func sumOfSubset (i:Int=0, sum:Int=0, subsetarray:[Int]=[] , inputArray:[Int]) {
    var subsetarray = subsetarray
   
    if(i>=inputArray.count){
        print("Subset Array \(subsetarray)")
        print(sum)
        return
    }

    subsetarray.append(inputArray[i])
    sumOfSubset(i:i+1, sum: sum+inputArray[i], subsetarray:subsetarray, inputArray:inputArray)
    subsetarray.removeLast()
    sumOfSubset(i:i+1, sum:sum, subsetarray:subsetarray, inputArray:inputArray)
   
}

sumOfSubset(inputArray:[3,1,2])
