import UIKit

func printName(_ name: String, _ n: Int) {
    if n > 0 {
        print(name)
        printName(name, n - 1)
    }
}

// Example usage
let name = "John"
let times = 5
printName(name, times)

