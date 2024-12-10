import UIKit


func printComplexScope() {
    let points = 100
    print(points)
    for index in 1...5 {
        let points = 300
        print("Loop \(index) : \(points + index)")
    }
    
    print(points)
}

printComplexScope()


func printName(name:String?){
    if let name = name {
        print(name)
    }
}

printName(name: "Akhlak")

