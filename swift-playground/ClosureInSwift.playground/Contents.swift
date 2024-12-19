import UIKit



func sum(numbers: [Int])->Int{
    var total: Int = 0
    for number in numbers{
        total += number
    }
    return total
}

sum(numbers: [1,2,3,4,5,6,7,8])

//{(paremeter)-> Return type in
//    statemnets
//}


 let sumClosure = {(numbers : [Int])-> Int in
    
    var total: Int = 0
     for number in numbers{
           total += number
        }
      return total
    
}

sumClosure([1,2,3,4,5])

//no parameter no return type
let printClosure = {()-> Void in
    print("Hello closure")
}
printClosure()

//with parameter no return type
let printClosureWithParameterNoReturnType = {(string : String)-> Void in
    print("hello \(string)")
}
printClosureWithParameterNoReturnType("Swift")


// no parameter with return type
let getName = {()-> String in
    return "Swift"
}

getName()



//       //       //          //          //        //          //        / / / / / / /
func mathOperation(num1: Int, num2: Int, operation : (Int, Int)-> Int)->Int{
    operation(num1, num2)
    
}

func add(num1:Int, num2:Int)->Int{
    return num1 + num2
}

func subtract(num1:Int, num2:Int)->Int{
    return num1 - num2
}

func multiply(num1:Int, num2:Int)->Int{
    return num1 * num2
}

let result = mathOperation(num1: 10, num2: 20, operation: add)
print(result)

let result2 = mathOperation(num1: 20, num2: 10, operation: subtract)
print(result2)

let result3 = mathOperation(num1: 10, num2: 20, operation: multiply)
print(result3)




//using closure
//let resultUsingClosure = mathOperation(num1: 10, num2: 20, operation: {(num1:Int, num2:Int)->Int in
//    num1 + num2
//})
//
//print(resultUsingClosure)


//let resultUsingClosure = mathOperation(num1: 10, num2: 20, operation: {(num1, num2)->Int in num1 + num2})
//print(resultUsingClosure)


//let resultUsingClosure = mathOperation(num1: 10, num2: 20, operation: {$0 + $1})
//print(resultUsingClosure)



let resultUsingClosure = mathOperation(num1: 10, num2: 20) {$0 + $1}
print(resultUsingClosure)


func greet(times : Int, op : () -> ()){
    for _ in 0...times{
        op()
    }
}

greet(times: 5) {
    print("Hello world")
}


var numbers : [Int] = [1,2,3,4,5,6,7,8]
var updatedNumbers : [Int] = []

for number in numbers{
    updatedNumbers.append(number + 1)
}

print(updatedNumbers)

func updateArray(array : [Int], operation : (Int)-> Int)-> [Int]{
    var updatedNumbers : [Int] = []
    for item in array{
        updatedNumbers.append(operation(item) + 1)
    }
    return updatedNumbers
}

//let resultUpdateArray = updateArray(array: [9,8,7,6,5,4,3,2,1], operation: {$0 + 1})
//print(resultUpdateArray)
let resultUpdateArray = updateArray(array: [9,8,7,6,5,4,3,2,1]) {$0 + 1}
print(resultUpdateArray)


// transform [a,b,c] to [aa,bb,cc]


var chars  = ["a", "b", "c"]
var updated = chars.map({$0 + $0})
print(updated)

var names = ["John", "Mary", "James"]
let printLetterCount = names.map({$0.count})
print(printLetterCount)


//let letterCount = names.map({(char : String) ->Int in
//    return char.count
//})
//
//print(letterCount)

let letterCount = names.map{$0.count}.filter({$0 < 5})
print(letterCount)

let integerArray = [1,2,3,4,5]
//var total = 0
//for number in integerArray{
//    total += number
//}


let totalSum = integerArray.reduce(0){(currentValue, newValue)-> Int in
    return currentValue + newValue
}


let total = integerArray.reduce(0){$0 + $1}
print(total)

func createCounter() -> ()->() {
    var counter = 0;
    return {
        counter += 1
        print(counter)
    }
}
let counter = createCounter()
counter()
counter()
counter()





struct Student{
    let name : String
    let testScore : Int
    
    
}


let students: [Student] = [Student(name: "Akhlak", testScore: 100), Student(name: "samar", testScore: 90), Student(name: "Abu", testScore: 80)]

var studentClosure = {(student1 : Student, student2 : Student) -> Bool in
    student1.testScore > student2.testScore
}

//let rankedStudents = students.sorted(by: studentClosure)
//for student in rankedStudents {
//    print("\(student.name) \(student.testScore)")
//}


//let rankedStudent = students.sorted(student1 : Student, student2 : Student)-> Bool





// EXTENSION

extension UIColor{
    func randomColor()->UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}


//let color = UIColor.randomColor()
//print(color)

extension Int{
    func run(op : ()->()){
        for _ in 0..<self {
            op()
        }
    }
}

5.run {
    print("Hello")
}
