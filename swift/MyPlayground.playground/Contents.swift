import UIKit

//var greeting = "Hello, playground"
//
//var i = 1
//switch i {
//case 1 :
//    print(1)
//case 2:
//    print(2)
//case 3:
//    print(3)
//case 4:
//    print(5)
//default:
//    print("VALUE not present")
//}
//
//print(Int.min)
//print(Int.max)
//
//let temperature = 70
//
//switch temperature{
//    
//case Int.min...64 :
//    print("temp is cold")
//case 65...75 :
//    print("Temp is just right")
//default:
//    print("Temp is hot")
//}
//
//let largest : Int
//let a = 10;
//let b = 23
//
//largest = a > b ? a : b
//print(largest)



var minute = 270
var hr = minute % 60
print(hr)

var inMinHour = hr / 60
print(inMinHour)



var totalMin = 270

let hourCharges = 25
let afterThreeHour = 40

var totalCharge = 0

let hours = Int(ceil(Double(totalMin)/60.0))

if hours <= 3{
    totalCharge = hours * hourCharges
}else{
    totalCharge = (3 * hourCharges) + ((hours - 3) * afterThreeHour)
}

print("Total parking hours \(hours)")
print("Total parking charge \(totalCharge)")

