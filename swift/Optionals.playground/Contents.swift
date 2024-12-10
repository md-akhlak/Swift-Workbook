import UIKit

var greeting = "Hello, playground"


struct Books {
    var name : String
    var publicationYear : Int?  // nil value accept
}


var firstBook = Books(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
var secondBook = Books(name: "Harry Pottet and the Chamber of secrets", publicationYear: 1998)

//for optinal use ? after the type
let announcedBooks = Books(name: "Harry Potter and iOS Developers of the Galgotias", publicationYear: nil)

//every type has an associated optional
//Int -> Int?, String -> String?
//can't create an optional without annotation
let serverResponseCode : Int? = nil

//print(firstBook.publicationYear)   // Optional(1997)
//force unwrap
print(firstBook.publicationYear!)


// if we do any operation on nil then program will crash, force unwrap will not used
//Fatal error: Unexpectedly found nil while unwrapping an Optional value Playground execution failed:
//print(announcedBooks.publicationYear!) // nil

//redundant way
if announcedBooks.publicationYear != nil{
    let year = announcedBooks.publicationYear!
    print(year)
}else{
    print("The book has not been published yet")
}

//optional binding
//better use if let.
if let year = announcedBooks.publicationYear {
    print("THe publication year is : \(year)")
}else {
    print("The book has not been published yet")
}

print("Hello world")


let text = "e123"
let possibleNumber = Int(text)
//print(possibleNumber!)  //Fatal error: Unexpectedly found nil while unwrapping an Optional value Playground execution failed:


func dummyFunc(parameterOne : Int?) -> Int?{
    return parameterOne
}



//Failale Initializers
struct Toddler {
    var name : String
    var monthsOld : Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }else {
            self.monthsOld = monthsOld
            self.name = name
        }
    }
    
}

let firstChild = Toddler(name: "Krish", monthsOld: 23)
let secondChild = Toddler(name: "Aman", monthsOld: 48)

struct Person {
    var age : Int
    var residence : Residence?
}

struct Residence {
    var area : String?
    var location : Location?
}

struct Location {
    
}

