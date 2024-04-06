import UIKit

//func frogjump(ind:Int, dparray:[Int]=[], heigtharaay:[Int]) -> Int{
//    if (ind == 0){
//        return 0
//    }
//    var left = frogjump(ind:ind-1,dparray:dparray ,heigtharaay: heigtharaay) + abs(heigtharaay[ind] - heigtharaay[ind-1])
//    var rigth = Int.max
//    
//         rigth = frogjump(ind:ind-2,dparray:dparray ,heigtharaay: heigtharaay) + abs(heigtharaay[ind] - heigtharaay[ind-2])
//    
//    
//    return min(left, rigth)
//}


func frogJump(_ heights: [Int]) -> Int {
    let n = heights.count
    var dp = Array(repeating: 0, count: n)
    
    // Base case: minimum energy needed to reach the first stair is 0
    dp[0] = 0
    
    // Calculate minimum energy needed to reach each stair
    for i in 1..<n {
        if i == 1 {
            // If only two stairs, then directly jump from the first to the second
            dp[i] = abs(heights[i] - heights[i-1])
        } else {
            // Minimum energy to reach the ith stair is the minimum energy of either jumping from the (i-1)th stair or (i-2)th stair plus the energy needed for that jump
            dp[i] = min(dp[i-1] + abs(heights[i] - heights[i-1]), dp[i-2] + abs(heights[i] - heights[i-2]))
        }
    }
    
    // The minimum energy needed to reach the last stair is the answer
    return dp[n-1]
}

var heiths = [7,4,4,2,6,6,3,4]
print(frogJump(heiths))
