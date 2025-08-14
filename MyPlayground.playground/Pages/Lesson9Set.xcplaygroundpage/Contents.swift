import Foundation

var greeting = "Set"

// MARK: Set create
let someStrings: Set<String> = []
let characters = Set<Character>()

//MARK: Add data
var mySet: Set = ["a", "b", "c", "c"]

// MARK: Check data
mySet.contains("a")

// MARK: Insert data
mySet.insert("d")
mySet.insert("a")

// MARK: IsEmpty
if mySet.isEmpty {
    print("IsEmpty")
} else {
    print("Is not empty")
}

// MARK: Delete element
mySet.remove("a")

// MARK: Set + Set
var set1: Set = [1, 2, 3]
var set2: Set = [2, 4, 5]
var set3 = set1.union(set2)
var set4 = set1.intersection(set2)


