import UIKit


func signHappyBirthdayToYou(birthdayIsToday : Bool, invitedGuests : [String], cakeCandlesLit : Bool){
    if birthdayIsToday{
        if !invitedGuests.isEmpty{
            if cakeCandlesLit {
                print("Happy Bithday to you!")
            }else {
                print("The cake's candles haven't been lit.")
            }
        }else{
            print("It's just a family party")
        }
    }else {
        print("No one has a birthday today")
    }
}





func signHappyBirthday(birthdayIsToday : Bool, invitedGuests : [String], cakeCandlesLit : Bool){
    if !birthdayIsToday{
        print("No one has a bithday today")
        return
    }
    
    if invitedGuests.isEmpty{
        print("It's just a family party")
        return
    }
    
    if cakeCandlesLit == false{
        print("The cake's candles haven't been lit")
        return
    }
    print("Happy bithday to you")
}



//using guard
func signHappyBirthdayTo(birthdayIsToday : Bool, invitedGuests : [String], cakeCandlesLit : Bool){
    guard !birthdayIsToday else{
        print("No one has a bithday today")
        return
    }
    
    guard invitedGuests.isEmpty else{
        print("It's just a family party")
        return
    }
    
    guard cakeCandlesLit == false else{
        print("The cake's candles haven't been lit")
        return
    }
    print("Happy bithday to you")
}


func happyBirthday(birthdayIsToday : Bool, invitedGuests : [String], cakeCandlesLit : Bool){
    guard birthdayIsToday else {
        guard !invitedGuests.isEmpty else{
            guard cakeCandlesLit else{
                print("Happy Bithday to you!")
                return
            }
            print("The cake's candles haven't been lit")
            return
        }
        print("It's just a family party")
        return
    }
}



signHappyBirthday(birthdayIsToday: true, invitedGuests: ["Akhlak","Samar","Ramish","Axcy","Gotiya","Shahnawaz","Shahzada"], cakeCandlesLit: true)



signHappyBirthdayToYou(birthdayIsToday: true, invitedGuests: ["Akhlak","Samar","Ramish","Axcy","Gotiya","Shahnawaz","Shahzada"], cakeCandlesLit: true)


signHappyBirthdayTo(birthdayIsToday: true, invitedGuests: ["Akhlak","Samar","Ramish","Axcy","Gotiya","Shahnawaz","Shahzada"], cakeCandlesLit: true)


happyBirthday(birthdayIsToday: true, invitedGuests: ["Akhlak","Samar","Ramish","Axcy","Gotiya","Shahnawaz","Shahzada"], cakeCandlesLit: true)


func divide(_ number: Double, by diviser:Double){
    if diviser != 0.0 {
        let result = number/diviser
        print(result)
    }
}


// using guard
func divideUsingGuard(_ number:Double, by diviser : Double) {
    guard diviser != 0.0 else{
        return
    }
    let result = number/diviser
    print(result)
}


class Goose{
    var eggs : [String]?
}

let goose = Goose()
goose.eggs = ["egg1","egg2","egg3","egg4"]
if let eggs = goose.eggs {
    print("The goose laid \(eggs.count) eggs.")
}

@MainActor func numberOfEggs(){
    guard let eggs = goose.eggs else{
        return
    }
    print("The goose laid \(eggs.count) eggs.")
}

numberOfEggs()

class Book{
    var title : String?
    var price : Double?
    var pages : Int?
    
    init(title: String? = nil, price: Double? = nil, pages: Int? = nil) {
        self.title = title
        self.price = price
        self.pages = pages
    }
    
    func processBook(title :String?, price:Double?, pages:Int?){
        if let theTitle = title{
            let thePrice = price
            let thePages = pages {
                print("The Title \(theTitle) costs $\(thePrice) and had \(pages)")
            }
        }
    }
}
