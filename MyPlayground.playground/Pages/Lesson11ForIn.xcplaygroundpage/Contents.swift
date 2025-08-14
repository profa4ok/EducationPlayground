import Foundation

var greeting = "for-in"

// MARK: for-in

for i in "12345" {
    print(i)
}

var k = 0
var term = 0
for i in 0..<20 {
    k += i
    term = k
}
print(term)
print(k)

// MARK: Calc "Rabbit"
let animals = ["rabbit", "cat", "rabbit"]
var count = 0;
for animal in animals {
    count += animal == "rabbit" ? 1 : 0
}
print(count)


// MARK: for-in Dictionary
var family = [1: "Mask", 2: "Alex"]
for (key, value) in family {
    print("\(key) : \(value)")
}

// MARK: continue
count = 0
for i in 1...5 {
    if i == 5 { continue }
    count += i
}
count

// MARK: break
count = 0
for i in 1...5 {
    if i == 3 { break }
    count += i
}
count
