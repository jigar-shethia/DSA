import UIKit
import Foundation

//for i in stride(from: array.count-1, through: 0, by: -1){
//    print(array[i])
//}

// Revserse an array using recusion
func reveserNumber(left:Int, rigth:Int, inputArray: [Int]) -> [Int]{
    print("Init left \(left)")
    print("Init rigth \(rigth)")
    
    var array = inputArray
    if(left >= rigth/2){
        return array
    }
    array.swapAt(rigth-left-1,left)
   
    return reveserNumber(left: left+1, rigth: rigth, inputArray: array)
}

let intialArray = [1,2,3,4,5,6,7,8,9]
print("Revsersed Aaray \(reveserNumber(left: 0, rigth: intialArray.count, inputArray: intialArray))")
