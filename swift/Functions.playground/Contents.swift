import UIKit

// Apparela App

var itemCount : Int = 0
var itemTotal : Double = 0.0
var taxRate : Double = 0.12
var taxOnItemTotal : Double = 0.0
var cartTotal : Double = 0.0

var firstItemName : String = "Shirt"
var firstItemPrice : Double = 1200
addItemToCart()

var secondItemName : String = "Trouser"
var secondItemPrice : Double = 1200
addItemToCart()

var thirdItemName : String = "Tie"
var thirdItemPrice : Double = 450
addItemToCart()

var fourthItemName : String = "Socks"
var fourthItemPrice : Double = 225
addItemToCart()


// Function
// writing maintainable and resusable code
// define a function using funct keyword
//fundamental way of using abstaction in code



func addItemToCart(){
    //body
    
//    displaySuccessMessage()
    
    diplaySuccessMessageWithItemName(itemName: firstItemName)
}

//function with no parameter
func displaySuccessMessage(){
    print("Item added to the card successfully")
}

func diplaySuccessMessageWithItemName(itemName:String){    // here itemName is function parameter
    print("\(itemName) added to the card")
}


diplaySuccessMessageWithItemName(itemName: firstItemName)


//here firstName is argument
// Argument is the value that we pass tot he function parameter


//print(itemName) -> scope of the parameter is only within the function

func displaySuccessMessageWithIemNameAndPrice(itemName: String, itemPrice: Double){     // function with multiple parameter
    print("\(itemName) costing \(itemPrice) added to the cart successfully")
    
}

displaySuccessMessageWithIemNameAndPrice(itemName: secondItemName, itemPrice: secondItemPrice)
//generally argument labels are same as function parameter names but not always


displaySuccessMessageWithIemNameAndPrice(itemName: fourthItemName, itemPrice: fourthItemPrice)

//displaySuccessMessageWithIemNameAndPrice(thirdItemName, thirdItemPrice)  -> cannot call a function without argument label if the parameter are named

//displaySuccessMessageWithIemNameAndPrice(itemPrice: firstItemPrice, itemName: firstItemName) -> cannot change the order of argument

//Another Example of swift being expressive


//itemName and itemPrice used internally for implementation
//with and are used externally

func displaySuccesMessage(with itemName : String, and itemPrice : Double){
    print("\(itemName) costing \(itemPrice) added to card successfully")
}

displaySuccesMessage(with: thirdItemName, and: thirdItemPrice)


//omit argument label
func displayMessageFor(_ itemName :String, _ itemPrice : Double){
    print("\(itemName) costing \(itemPrice) added to the card successfully")
}

displayMessageFor("shoes", 122)


//Function with return type
//func calculateTaxOnItem(itemPrice: Double) ->Double {
//    let taxOnItem = itemPrice * 0.12
//    return taxOnItem
//}

//func calculateTaxOnItem(itemPrice: Double) ->Double {
//    itemPrice * 0.12
//}




//let calculatedTaxOnItem = calculateTaxOnItem(itemPrice: firstItemPrice)
//print("The tax on \(firstItemName) is \(calculatedTaxOnItem)")

//print("The tax on \(firstItemName) is \(calculateTaxOnItem(itemPrice: firstItemPrice))")



//Default Value of function parameter
func calculateTaxAndPlatformFee(_ itemPrice: Double, _ platFormRate: Double,_ taxRate: Double = 0.12){
    print("Tax is \(itemPrice * taxRate)")
    print("Platforn fee is \(itemPrice * platFormRate)")
}


//calculateTaxAndPlatformFee(itemPrice: firstItemPrice, platFormRate: 0.05)
//calculateTaxAndPlatformFee(itemPrice: firstItemPrice, taxRate: 0.15, platFormRate: 0.05)

// if we are calling a function without argument labels and there are default paramenter then it should be in last
calculateTaxAndPlatformFee(firstItemPrice,0.01)
calculateTaxAndPlatformFee(firstItemPrice, 0.15,0.01)






//func calculateTaxAndPlatformFee(itemPrice : Double, platformRate:Double, taxRate:Double = 0.12)-> (Double, Double){
//    
//    let taxOnItem = itemPrice *  taxRate
//    let platformItem = itemPrice * platformRate
//    
//    return (taxOnItem, platformRate)
//    
//}





func calculateTaxAndPlatformFee(itemPrice : Double, platformRate:Double, taxRate:Double = 0.12)-> (tax:Double, platformR:Double){
    
    let taxOnItem = itemPrice *  taxRate
    let platformItem = itemPrice * platformRate
    
    return (tax,platformR)
    
}

let taxAndPlatform = calculateTaxAndPlatformFee(1500, 0.02)
print("Tax is \(taxAndPlatform.taxOnItem)")

