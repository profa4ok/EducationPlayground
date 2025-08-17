import Foundation

var greeting = "Guard"

func checkUser(_ login: String, _ password: String) -> Bool {
    guard login != "", password != "" else {
        print("login is empty")
        return false
    }
    print("Is authorized")
    return true
}

var user = checkUser("Login", "")
user

func validateAge(_ age: Int) -> Bool {
    guard age >= 18 else {
        print("Age denied")
        return false
    }
    
    print("Age granted")
    return true
}

validateAge(17)
validateAge(18)

// MARK: optional

func getName(_ name: String?) {
    guard let newName = name else {
        print("name is nil")
        return
    }
    
    print(newName)
}

getName("Alex")
getName(nil)
