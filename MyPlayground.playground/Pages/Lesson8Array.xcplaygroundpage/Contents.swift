import Foundation

var greeting = "Array"

// MARK: Create new array

let arrayIntegers = [1, 2, 3, 4, 5]

// MARK: Create empty array
var arrayInteger1 = [Int]()
var arrayInteger2:[Int] = []

// MARK: Add elements in array
arrayInteger2 = [1, 2, 3, 4, 5]
arrayInteger2 = [1, 2, 3]
arrayInteger2 += [1, 2]
arrayInteger2.append(10)

// MARK: Add elements in array by index
arrayInteger2.insert(12, at: 0)

// MARK: Sum arrays
let someInteger = arrayInteger1 + arrayInteger2

// MARK: Delete elements by array
arrayInteger2.removeFirst()
arrayInteger2.removeLast()
arrayInteger2.remove(at: 0)

// MARK: Count array
arrayInteger2.count
arrayInteger2.count(where: { $0 == 0 })

// MARK: Index array
arrayInteger2[0]

// MARK: Read elements

let arrayInt = [10, 20, 30]

for number in arrayInt {
    print(number)
}

for (index, value) in arrayInt.enumerated() {
    print("Index \(index), Value \(value)")
}

for pair in arrayInt.enumerated() {
    print("index \(pair.offset), value \(pair.element)")
}

// MARK: Search elements
let searchNumbers = [1, 2, 3, 4]
searchNumbers.contains(5)
searchNumbers.first(where: { $0 > 2 })

// MARK: Edit elements
var mutableArray = searchNumbers.map { $0 % 2 == 1 ? $0 : $0 * 2 }
mutableArray = mutableArray.filter { $0 > 1 }

// MARK: Sort elements
mutableArray.sorted()
mutableArray.sorted(by: <)

// MARK: Reduce аккумуляция
mutableArray.reduce(0) { $0 + $1 }
var arraySum: Int = mutableArray.reduce(0) { (accum, value) in
    return accum + value
}

// MARK: Array types
let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print(matrix[1][1])
