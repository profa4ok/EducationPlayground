import Foundation

var greeting = "Switch"

// MARK: if

var animal: String = "bird"

switch animal {
case "cat":
    print("cat")
case "dog":
    print("dog")
case "bird", "sparrow":
    print("bird")
default:
    print("unknown")
}

// MARK: switch

let numberOfPeople = 5
var amount = ""

switch numberOfPeople {
case ..<0:
    print("it imposible")
case 0:
    amount = "no"
case 1:
    amount =  "one"
case 2...5:
    amount = "few"
    fallthrough
case 5:
    amount = "five"
case 6..<10:
    amount = "enough"
case 10...30:
    amount = "many"
default:
    amount = "too many"
}

print("\(amount) people at my patry!")

// MARK: fallthrough - переходит к телу другого case без проверок

var score = 5

switch score {
case 4...5:
    print("4...5(0)")
    fallthrough
case 5:
    print("5(1)")
    fallthrough
case 5:
    print("5(2)")
default:
    print("another score")
}

// MARK: where - делает проверку детальнее

switch score {
case 4...5 where score == 5:
    print("where = 5")
    fallthrough
case 4...5 where score == 4:
    print("where = 4")
default:
    print("where unknown")
}

// MARK: let в case

let scores = (3, 2)

switch scores {
case let(x, y) where x == y:
    print("x & y == 3")
case (3, 3):
    print("3:3(1)")
default:
    print("unknown")
}

// MARK: Захват значений, n = name

let name: String = "Maksim"

switch name {
case let n where n.count > 10:
    print("long name: \(n)")
case let q:
    print("short name \(q)")
default:
    print("unknown")
}

// MARK: enum

enum Direction {
    case top, bottom, middle
}

let dir = Direction.bottom

switch dir {
case .top:
    print("Top")
case .bottom:
    print("Bottom")
case .middle:
    print("Middle")
}

// MARK: associated values

enum Actions {
    case jump(height: Int)
    case run(speed: Int)
}

let action = Actions.run(speed: 100)

switch action {
case .run(speed: 101):
    print("run 100 (1)")
case .run(let n):
    print("run \(n) (2)")
case .jump(let n):
    print("jump \(n)")
default:
    print("unknown")
}

// MARK: Optionals some optional = (case some (Wrapped), case none = nil)

let optionalInt: Int? = nil
switch optionalInt {
case .some(let x) where x > 0:
    print("x > 0")
case .none:
    print("nil")
default:
    print("unknown")
}


