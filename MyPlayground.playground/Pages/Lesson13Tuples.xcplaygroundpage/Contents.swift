import Foundation

var greeting = "Tuples"

// MARK: Enum tuples
enum types {
    case i(name: String, age: Int)
    case e(name1: String, age2: Int)
}

var type = types.e(name1: "123", age2:10)
type = types.i(name: "123", age: 20)

// MARK: Exercises
let (_, b, _) = (10, 20, 30)

let tuple_2 = (id: 1, name: "Alex")
tuple_2.name
tuple_2.1

var tuple_3 = (1, "Bob")
tuple_3.1 = "Alice"


// MARK: Tuple names
var person = (id: 1, name: "Alex", age: 30)
person.id
person.1

// MARK: Inner Tuples
var person2 = (id: 2, name: (firstName: "Alex", secondName: "Krit"), age: 20)
person2.name.firstName
person2.1.1

// MARK: switch tuple

let point = (0, 5)
switch point {
case (_, 5):
    print("_ 5")
case (5, _):
    print("5 _")
default:
    print("Unknown")
}

let (hero1, hero2, hero3) = (1, 2, 3)
hero1
hero2
hero3

var tuple1 = (1, "2", 3)
tuple1.1
tuple1.0
tuple1.0 = 2
tuple1

let (t1, _, _) = tuple1
t1

var dict = [1: "Alex", 2: "Bob"]
for (index, value) in dict {
    print("\(index) \(value)")
}

