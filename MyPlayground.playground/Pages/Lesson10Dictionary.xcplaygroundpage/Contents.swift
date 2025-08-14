import Foundation

var greeting = "Dictionary"

// MARK: Dictionary create

var dict1 = Dictionary<String, Int>()
var dict2: Dictionary<String, Int> = [:]
var dict3 = [Int: String]()
var dict4: [String: Int] = [:]

// MARK: Add dictionary data
dict4 = ["Jach": 1, "Jane": 2]
dict4["Jane"] = 3
dict4["Alex"] = 5000
dict4
dict4["Alex"] = 6000
dict4

// MARK: Delete data
dict4.removeValue(forKey: "Jane")
dict4
dict4["Alex"] = nil
dict4

// MARK: Remove all
dict4.removeAll()
dict4 = [:]
