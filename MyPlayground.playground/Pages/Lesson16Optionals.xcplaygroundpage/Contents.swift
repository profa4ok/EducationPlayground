import Foundation

var greeting = "Optionals"

// MARK: Optionals

var someString: String? = nil

var optinalInt: Int? = nil
if let intValue = optinalInt {
    print("Int value \(intValue)")
} else {
    print("Optinal Int is null")
}

print("Int value \(optinalInt ?? 0)")

switch optinalInt {
case .some(let value):
    print("Some value \(value)")
case .none:
    print("None value")
}

// MARK: guard let / if let

func getValue(_ a: Int?) -> Bool {
    guard let IntValue = a else {
        print("nil")
        return false
    }
    
    return true
}

getValue(1)

// MARK: coalescing
let a: Int? = 1
let b: Int? = 2
let c: Int? = nil

let d: Int? = a ?? b ?? c ?? -1

// MARK: Chaining

struct Hero {
    var name: String?
}

var hero: Hero? = Hero(name: nil)
let name = hero?.name

