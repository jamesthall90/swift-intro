// Swift uses type inference to determine the appropriate data type
var myString = "Hello, playground"

// Should print "Swift knows that str is a String"
print("Swift knows that myString is a \(type(of: myString))")

// If necessary, type can be specified
var sum: Int?

// Swift uses var for variables whose value might change
myString += ", my name is Swift"
print(myString)

// Whereas constants, whose values will not change, should use let
let letConstant = 5

// Function declaration works slightly differently in Swift than in Java

// Void functions can be declared like this:
func printValue (value: Int) {
    print(value)
}

// Functions that return a value can be declared like this:
func add(param1: Int, param2: Int) -> Int {
    return param1 + param2
}

// Attempting to assign a value to a let constant will stop your program from compiling
// letConstant = add(param1: 5, param2: 5)

// Attempting to assign to a var
sum = add(param1: letConstant, param2: 5)

// Because sum is a wrapped Optional, this should print "Optional(10)"
print(sum)

// There are several ways to handle unwrapping optionals:

// Optional values can be force-unwrapped,
// however this is considered bad practice
print("The sume of the two values is \(sum!)")

// They can also be unwrapped using the if-let optional binding
if let value = sum {
    print("The sum of the two values is: \(value).")
} else {
    print("The sum does not have a value.")
}

// Guard statements can be used within functions
// to unwrap Optionals and handle cases where the
// value is nil by either throwing or returning
func printUnwrappedOptionalUsingGuard(optionalToPrint: Any?) {
    guard let sum = optionalToPrint else {
        print("The value of sum was nil!")
        return
    }
    print("The value of sum was \(sum)")
}

printUnwrappedOptionalUsingGuard(optionalToPrint: sum)

printUnwrappedOptionalUsingGuard(optionalToPrint: nil)

// In some instances null-coalescence is a viable option for handling Optionals
var optionalString: String? = nil
let defaultValue = optionalString ?? "default value"
print("The Optional string's value is: \(defaultValue)")
