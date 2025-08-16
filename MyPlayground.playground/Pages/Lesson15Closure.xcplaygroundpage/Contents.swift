import Foundation

var greeting = "Closure"

// MARK: Closure

let someClosure = { (name: String, surName: String) -> () in
    print("\(name) \(surName)")
}

func tellMeYourName(name: String, surName: String, closure: (String, String) -> ()) {
    closure(name, surName)
}

tellMeYourName(name: "John", surName: "Doe", closure: someClosure)
tellMeYourName(name: "Alex", surName: "Alexos", closure: { (name1: String, surName1: String) in
    print("\(name1) \(surName1)")
})

tellMeYourName(name: "Alex", surName: "Alexos", closure: { name1, surName1 in
    print("\(name1) \(surName1)")
})

tellMeYourName(name: "Alex", surName: "Alexos", closure: {
    print("\($0) \($1)")
})

tellMeYourName(name: "Alex", surName: "Alexos") { print("\($0) \($1)") }
let someSet: Set = [1, 2, 3, 4, 5]
someSet.sorted(by: >)

// MARK: Closure return value
let multiplyClosure: (Int, Int) -> Int = { $0 * $1 }
let resultMultiplyClosure = multiplyClosure(10, 20)

// MARK: Closure education

func increment() -> () -> Int {
    var count = 0
    print("var count = \(count)")
    return {
        count += 1
        print("\(count) return")
        return count
    }
}

func stringText() -> String { "Hello" }
let text = stringText()

let index = increment()
index()
index()
index()

// MARK: @escaping

func doLater(_ closure: @escaping @Sendable () -> ()) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 10) {
        closure()
    }
}

doLater {
    print("я вызвался через 10 секунд")
}

// MARK: AutoClosure
func printBool(_ closure: @autoclosure () -> Bool) {
    closure() ? print("true") : print("false")
}

func printBool1(_ closure: () -> Bool) -> () -> () {
    closure() ? print("true") : print("false")
    return {
        print("return false")
        
    }
}

let print1 = printBool1 {2 > 1}
print1()

let add5: (Int, Int) -> Int = {
    $0 + $1
}

add5(10, 20)
add5(10, 10)

func makeMultiplier(factor: Int) -> () -> Int {
    var count = 0
    
    print("Outer")
    let innerClosure: () -> Int = {
        print("Inner")
        count += 1
        return count * factor
    }
    
    return innerClosure
}

let multiplyBy2 = makeMultiplier(factor: 2)

print(multiplyBy2()) // 2  (1 * 2)
print(multiplyBy2()) // 4  (2 * 2)
print(multiplyBy2()) // 6  (3 * 2)
