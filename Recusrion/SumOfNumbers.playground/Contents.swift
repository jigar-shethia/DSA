import UIKit
// Factional approch of recursion
func addNumbers(n:Int) -> Int{
    if n < 0 {
        return 0
    }
    else{
        return n + addNumbers(n:n-1)
    }
    
}

print(addNumbers(n: 4))
