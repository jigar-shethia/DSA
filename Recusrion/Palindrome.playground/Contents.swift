import UIKit
import Foundation

func checkPaldindrome(left:Int = 0 , word:String) -> Bool {
    var rigth = word.count
    var inputArray = Array(word)
    if(left >= rigth/2) {
        return true
    }
    if (inputArray[left] == inputArray[rigth-left-1]){
        return checkPaldindrome(left: left+1, word: word)
    }
    return false
}

print(checkPaldindrome(word: "MOM"))
