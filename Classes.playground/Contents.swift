import UIKit

/*

 Classes are similar to structs but support a powerful feature called Inheritance. There are lot of differences between Classes and Structs
 
--> Classes never come with an initializer. You must create your own intitializer for all the properties.
--> You can create another class from an existing class unlike structs. This is called Inheritance or subclassing.
--> final keyword is used to restrict the users to override and inherit from the class declared as final.
--> Copying classes changes the values in both the classes and Copying structs create their own copies and have different values in both the structs.
--> Classes can have deinitializers where these get called when the class is getting destroyed.
--> Classes don't need the mutating keyword for the methods that change the properties defined as variables. Structs need the methods to be defined as mutating if the variables need to be changed.

*/

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle: Dog {
    
    /*Example of Method Overriding*/
    
    override func makeNoise() {
        print("Yip!")
    }
}

//let poppy = Dog(name: "Poppy", breed: "Poodle")
let poppy = Poodle(name: "Puppy", breed: "")
poppy.makeNoise()


/*------------------------------------------------------------*/
/*How Copying works in Classes and Structs*/
/*------------------------------------------------------------*/

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
print(singerCopy.name)

/*------------------------------------------------------------*/
/*Example of using deinit*/
/*------------------------------------------------------------*/

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


//class Vehicle {
//    var wheels: Int
//    init(wheels: Int) {
//        self.wheels = wheels
//    }
//}
//class Truck: Vehicle {
//    var goodsCapacity: Int
//    init(wheels: Int, goodsCapacity: Int) {
////        super.init(wheels: 10)
//        self.goodsCapacity = goodsCapacity
//    }
//}
