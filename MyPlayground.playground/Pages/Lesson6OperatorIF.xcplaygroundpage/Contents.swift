import Foundation

var greeting = "Operator IF"

var number = 5

if number > 2 {
    var newNumber = 10
    print("number > 2")
}

if number < 4 {
    print("number < 4")
}

// MARK: IF ELSE
number = 0

if number >= 2 {
    print("number >=2")
} else if number == 1 {
    print("number == 1")
} else {
    print("Unknown")
}

// MARK: && ||

if number > 1 && number < 10 {
    print("number == 1 or number < 10")
}

// MARK: Ternar

number > 1 ? print("number > 1") : print("number !> 1")

