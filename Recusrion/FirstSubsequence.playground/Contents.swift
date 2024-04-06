import UIKit

protocol Car{
    func drive()
    func reverse()
}

class SuperCar{
    var car: Car
    
    init(carObj: Car){
        self.car = carObj
    }
    
}

func genricMethod <T> (input:T){
    
    
}
