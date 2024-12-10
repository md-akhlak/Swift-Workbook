import UIKit

class Animal {
    
}
class Cat : Animal{
    
}
class Dog : Animal{
    
}
class Bird : Animal{
    
}
class Turtle : Animal{
    
}

func getClientPet(clientName : String) -> Animal {
    if clientName == "John"{
        return Dog()
    } else if clientName == "Mary"{
        return Cat()
    } else if clientName == "Harry"{
        return Bird()
    } else if clientName == "Claire"{
        return Turtle()
    } else{
        return Animal()
    }
}

let pet = getClientPet(clientName: "John")

// Type inspection through 'is' keyword

if pet is Dog {
    print("Client has a Dog")
} else if pet is Cat {
    print("Client has a Cat")
} else if pet is Bird {
    print("Client has a Bird")
} else if pet is Turtle {
    print("Client had a Turtle")
} else {
    print("Client has a Wild Animal")
}



let allMyPets = [Dog(), Cat(), Bird(), Turtle(),Dog(), Cat(), Bird(), Turtle(),Dog(), Cat(), Bird(), Turtle(),Dog(), Cat(), Bird(), Turtle(),Turtle(),Dog(),Bird(), Turtle(),Dog(), Cat(), Bird(), Turtle(),Dog(), Cat(), Bird(), Turtle(),Dog()]

var numberOfCats = 0
var numberOfDogs = 0
var numberOfBirds = 0
var numberOfTurtles = 0

for pet in allMyPets {
    if pet is Dog {
        numberOfCats += 1
    } else if pet is Cat {
        numberOfDogs += 1
    } else if pet is Bird {
        numberOfBirds += 1
    } else if pet is Turtle {
        numberOfTurtles += 1
    } else {
        print("Client has a Wild Animal")
    }
}


print("Cats : \(numberOfCats)")
print("Dogs : \(numberOfDogs)")
print("Birds : \(numberOfBirds)")
print("Turtle : \(numberOfTurtles)")



func walkTheDogs(petDogs : Dog) {
    print("Walk the dogs")
}

func cleanTheCatsLitterBox(petCat:Cat){
    print("Clean the cats litter box")
}

func cleanTheTurtlesTerrarium(petTurtle : Turtle){
    print("Clean the turtles terratium")
}

func cleanTheBirdsCase(petBird : Bird){
    print("Clean the birds case")
}


let clairePet = getClientPet(clientName: "Marry")
if clairePet is Cat {
    cleanTheCatsLitterBox(petCat: clairePet as! Cat)
} else if clairePet is Dog {
    walkTheDogs(petDogs: clairePet as! Dog)
} else if clairePet is Turtle {
    cleanTheTurtlesTerrarium(petTurtle: clairePet as! Turtle)
} else if clairePet is Bird {
    cleanTheBirdsCase(petBird: clairePet as! Bird)
}

if let clairesTurtle = clairePet as? Turtle {
    cleanTheTurtlesTerrarium(petTurtle: clairesTurtle)
}


var items : [Any] = [1,1.9,"hello",true,Dog(), Cat()]

var itemss = [1,1.9,"hello",true] as [Any]


print(type(of: items))
print(type(of: items[0]))
print(type(of: items[1]))
print(type(of: items[2]))
print(type(of: items[3]))
print(type(of: items[4]))




var anyObject :[AnyObject] = [Cat(),Dog()]






