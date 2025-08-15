import Foundation

var greeting = "WhileRepeat"

// MARK: tricky questions
var array2 = [1, 2, 3]
for i in array2 {
    array2.append(4)
}

// MARK: Set for in
let s: Set = [1, 2, 3]
print(Array(s)[0])

// MARK: forEach
var array1 = [1, 2, 3]
array1.forEach { (element) in
    print(element)
}

// MARK: label
var count = 0
labeli: for i in 1...3 {
    print("i = \(i)")
    labelj: for j in 1...3 {
        if i == 2 {
            break labeli
        }
        print("j = \(j)")
    }
}

for i in 1...5 {
    print(i)
}

// MARK: stride
for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}

for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

// MARK: Optional
print("optional")
var array = [1, nil, 3]
for value in array.compactMap({ $0 }) { print(value) }  // 1 3

var counter = 5
while counter > 0 {
    print("counter")
    counter -= 1
}

// MARK: Enumerated
print("enumerated")
let arr = ["a", "b", "c"]
for (i, v) in arr.enumerated() {
    print("\(i) \(v)")
}

repeat {
    print("counter")
    counter -= 1
} while counter > 0
