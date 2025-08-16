import Foundation

var greeting = "Function"

// MARK: Create func

func sayHello() -> String {
    "Hello"
}

func sayHello1() {
    print("Hello")
}

let hello = sayHello()
let hello1 = sayHello1

func createHero1(hero heroName: String, age heroAge: Int) -> String {
    "\(heroName) \(heroAge)"
}
var hero1 = createHero1(hero: "Superman", age: 100)

func createHero2(_ heroName: String, _ heroAge: Int) -> String {
    "\(heroName) \(heroAge)"
}
var hero2 = createHero2("Iron man", 20)

func createHero3(_: String, _: Int) -> String {
    "hello hero"
}
var hero3 = createHero3("Batman", 50)

// MARK: Variate params
func findSum(num numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
let sum1 = findSum(num: 1, 2, 3, 4, 5)

// MARK: Funciton as value
func add(_ a: Int, _ b: Int) -> Int { a + b }
func multipy (_ a: Int, _ b: Int) -> Int { a * b }

var operationAdd: (Int, Int) -> Int = add
operationAdd(10, 10)

// MARK: Functions as param
func add2(_ a: Int, _ b: Int, _ operation:(Int, Int) -> Int) -> Int {
    operation(a, b)
}
var sum2 = add2(10, 20, add)

// MARK: Inout param
func increment(_ value: inout Int) {
    value += 1
}
var x = 10
increment(&x)

// MARK: Default value
func createHero4(_ name: String, _ age: Int = 10) -> String {
    "\(name) \(age)"
}
var hero4 = createHero4("Hero4")

// MARK: Exercises
// 1
func calculateRectangleArea(_ width: Int, _ height: Int) -> Int {
    width * height
}
var calcRectangleArea = calculateRectangleArea(10, 5)

// 2
func greet(_ name: String = "Guest") -> String {
    "Hello \(name)"
}
var greetName = greet("Alex")

//3
func calcAvg(_ numbers: Int...) -> Double {
    var sum = 0
    for num in numbers {
        sum += num
    }
    
    return Double(sum) / Double(numbers.count)
}
var calcAvgResult = calcAvg(1, 2, 3, 4, 5, 6)

//4
var a = 10
var b = 20
func swapValues(_ a: inout Int, _ b: inout Int) {
    var temp: Int = a
    a = b
    b = temp
}
swapValues(&a, &b)
print("a = \(a), b = \(b)")

//5
func factorial(_ n: Int) -> Int {
    guard n >= 0 else {
        return 0
    }
    
    if n == 0 || n == 1 {
        return 1
    }
    
    return (1...n).reduce(1, *)
}
var factorialResult = factorial(5)

// MARK: map | every element

let numMap = [1, 2, 3, 4, 5]
let numMap2 = numMap.map( { $0 * 2 } )

// MARK: filter | filter element

let numFilter = [1, 2, 3, 4, 5]
let numFilter2 = numFilter.filter( { $0 == 1 } )

// MARK: reduce | in one element

let numReduce = [1, 2, 3, 4]
let numReduce2 = numReduce.reduce(0) { $0 + $1 }
let numReduce3 = numReduce.reduce(1) { $0 * $1 }

// MARK: compactMap | delete nil
let numberCompactMap = [1, 2, 3, nil, 4]
let numberCompactMap2 = numberCompactMap.compactMap( {$0} )

// MARK: flatMap | separation array

let arrayFlatMap: [[Int]] = [[1, 2], [3, 4], [3, 5]]
let arrayFlatMap2: [Int] = arrayFlatMap.flatMap( {$0} )


