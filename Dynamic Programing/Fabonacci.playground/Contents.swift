import UIKit

func getFabonnaciNumbers(max:Int) {
    var prev1 = 0
    var prev2 = 1
    for i in 0...max {
        var next = prev1+prev2
        prev1=prev2
        prev2=next
        print(prev2)
    }
}

getFabonnaciNumbers(max: 5)
